#include "tensorflow/lite/micro/all_ops_resolver.h"
#include "constants.h"
#include "model.h"
#include "output_handler.h"
#include "tensorflow/lite/micro/micro_error_reporter.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/schema/schema_generated.h"
#include "tensorflow/lite/version.h"
#include <Wire.h>
#include <Arduino.h>
////////////////////////////////
/////VARIABLES
////////////////////////////////


int contconexion=0;
const byte led_conn=27;

// MPU 9250
#define    MPU9250_ADDRESS            0x68
#define    MAG_ADDRESS                0x0C

#define    GYRO_FULL_SCALE_250_DPS    0x00  
#define    GYRO_FULL_SCALE_500_DPS    0x08
#define    GYRO_FULL_SCALE_1000_DPS   0x10
#define    GYRO_FULL_SCALE_2000_DPS   0x18

#define    ACC_FULL_SCALE_2_G        0x00  
#define    ACC_FULL_SCALE_4_G        0x08
#define    ACC_FULL_SCALE_8_G        0x10
#define    ACC_FULL_SCALE_16_G       0x18

float Ax, Ay, Az, Gx,Gy,Gz;
float norm_ax, norm_ay, norm_az, norm_gx, norm_gy, norm_gz;
int16_t ax, ay, az, Tmp, gx, gy, gz;
long tiempo_prev;
float dt;
float ang_x, ang_y;
float ang_x_prev, ang_y_prev;
const float AccelScaleFactor = 8192.0;
const float GyroScaleFactor =65.5;
const int ACCELEROMETER_MAXIMUM=4; //g
const int GYRO_MAXIMUM=500;

const float accelerationThreshold = 2.5;
const int numSamples = 124;
int samplesRead = numSamples;



namespace tflite {
namespace ops {
namespace micro {
TfLiteRegistration* Register_DEPTHWISE_CONV_2D();
TfLiteRegistration* Register_MAX_POOL_2D();
TfLiteRegistration* Register_CONV_2D();
TfLiteRegistration* Register_FULLY_CONNECTED();
TfLiteRegistration* Register_SOFTMAX();
}  // namespace micro
}  // namespace ops
}  // namespace tflite

// global variables used for TensorFlow Lite (Micro)
// Set up logging
tflite::MicroErrorReporter micro_error_reporter;
tflite::ErrorReporter* error_reporter = &micro_error_reporter;

// Map the model into a usable data structure. This doesn't involve any
// copying or parsing, it's a very lightweight operation.
const tflite::Model* model =
    ::tflite::GetModel(g_magic_wand_model_data);
if (model->version() != TFLITE_SCHEMA_VERSION) {
error_reporter->Report(
    "Model provided is schema version %d not equal "
    "to supported version %d.\n",
    model->version(), TFLITE_SCHEMA_VERSION);
}

static tflite::MicroMutableOpResolver micro_mutable_op_resolver;
micro_mutable_op_resolver.AddBuiltin(
    tflite::BuiltinOperator_DEPTHWISE_CONV_2D,
    tflite::ops::micro::Register_DEPTHWISE_CONV_2D());
micro_mutable_op_resolver.AddBuiltin(
    tflite::BuiltinOperator_MAX_POOL_2D,
    tflite::ops::micro::Register_MAX_POOL_2D());
micro_mutable_op_resolver.AddBuiltin(
    tflite::BuiltinOperator_CONV_2D,
    tflite::ops::micro::Register_CONV_2D());
micro_mutable_op_resolver.AddBuiltin(
    tflite::BuiltinOperator_FULLY_CONNECTED,
    tflite::ops::micro::Register_FULLY_CONNECTED());
micro_mutable_op_resolver.AddBuiltin(tflite::BuiltinOperator_SOFTMAX,
                                    tflite::ops::micro::Register_SOFTMAX());

// Create an area of memory to use for input, output, and intermediate arrays.
// Finding the minimum value for your model may require some trial and error.
const int tensor_arena_size = 60 * 1024;
uint8_t tensor_arena[tensor_arena_size];

// Build an interpreter to run the model with
tflite::MicroInterpreter interpreter(model, micro_mutable_op_resolver, tensor_arena,
                                    tensor_arena_size, error_reporter);

// Allocate memory from the tensor_arena for the model's tensors
interpreter.AllocateTensors();

// Obtain a pointer to the model's input tensor
TfLiteTensor* input = interpreter.input(0);



// Make sure the input has the properties we expect
TF_LITE_MICRO_EXPECT_NE(nullptr, input);
TF_LITE_MICRO_EXPECT_EQ(4, input->dims->size);
// The value of each element gives the length of the corresponding tensor.
TF_LITE_MICRO_EXPECT_EQ(1, input->dims->data[0]);
TF_LITE_MICRO_EXPECT_EQ(128, input->dims->data[1]);
TF_LITE_MICRO_EXPECT_EQ(3, input->dims->data[2]);
TF_LITE_MICRO_EXPECT_EQ(1, input->dims->data[3]);
// The input is a 32 bit floating point value
TF_LITE_MICRO_EXPECT_EQ(kTfLiteFloat32, input->type)


// array to map gesture index to a name
const char* GESTURES[] = {
 "slap",
  "down",
  "front"
};

#define NUM_GESTURES (sizeof(GESTURES) / sizeof(GESTURES[0]))


//Funcion auxiliar lectura
void I2Cread(uint8_t Address, uint8_t Register, uint8_t Nbytes, uint8_t* Data)
{
   //Serial.println("Reading I2C");
   Wire.beginTransmission(Address);
   Wire.write(Register);
   Wire.endTransmission();

   Wire.requestFrom(Address, Nbytes);
   uint8_t index = 0;
   while (Wire.available())
      Data[index++] = Wire.read();
}


// Funcion auxiliar de escritura
void I2CwriteByte(uint8_t Address, uint8_t Register, uint8_t Data)
{
   Wire.beginTransmission(Address);
   Wire.write(Register);
   Wire.write(Data);
   Wire.endTransmission();
}
void readData(){


   // ---  Lectura acelerometro y giroscopio --- 
   uint8_t buff[14];
   I2Cread(MPU9250_ADDRESS, 0x3B, 14, buff);

   // Convertir registros acelerometro
   //Serial.println("Acelerometro");
    ax = (buff[0] << 8 | buff[1]);
    ay = (buff[2] << 8 | buff[3]);
    az = (buff[4] << 8 | buff[5]);

   // Convertir registros giroscopio
   //Serial.println("Giroscopio");
    gx = (buff[8] << 8 | buff[9]);
    gy = (buff[10] << 8 | buff[11]);
    gz = (buff[12] << 8 | buff[13]);
}

void processAccelData(){
  Ax = ax / AccelScaleFactor;
  Ay = ay / AccelScaleFactor; 
  Az = az / AccelScaleFactor;
}


//
void processGyroData() {
  Gx = gx / GyroScaleFactor;
  Gy = gy / GyroScaleFactor; 
  Gz = gz / GyroScaleFactor;
}

void normalize() {
  float val=0.5;
  norm_ax = (ax-(-32768.0))/(32767.0-(-32768.0));
  norm_ay = (ay-(-32768.0))/(32767.0-(-32768.0));
  norm_az = (az-(-32768.0))/(32767.0-(-32768.0));
  norm_gx = (gx-(-32768.0))/(32767.0-(-32768.0));
  norm_gy = (gy-(-32768.0))/(32767.0-(-32768.0));
  norm_gz = (gz-(-32768.0))/(32767.0-(-32768.0));
/*   Serial.print(String(int (norm_ax+1*100)));
  Serial.print(",");
  Serial.print(val);
  Serial.print(",");
  Serial.print(norm_az,20);
  Serial.println(); */
}

void setup() {
////////////////////////SET UP ACELEROMETRO////////////////////////////////////////
// put your setup code here, to run once:
 Serial.begin(115200);
 Wire.begin();
 Serial.println("setting up");
 //setupMPU();
//Seting pin mode 
pinMode(led_conn, OUTPUT);
// pinMode(LED1, OUTPUT);


 // Configurar acelerometro
 I2CwriteByte(MPU9250_ADDRESS, 28, ACC_FULL_SCALE_4_G);
 // Configurar giroscopio
 I2CwriteByte(MPU9250_ADDRESS, 27, GYRO_FULL_SCALE_500_DPS);
 // Configurar magnetometro
 I2CwriteByte(MPU9250_ADDRESS, 0x37, 0x02);
 I2CwriteByte(MAG_ADDRESS, 0x0A, 0x01);

Serial.println("Setup complete");
model = tflite::GetModel(g_model);
  if (model->version() != TFLITE_SCHEMA_VERSION) {
    Serial.println("Model schema mismatch!");
    while (1);
  }
Serial.println("Model version correct");

  // Create an interpreter to run the model
  tflInterpreter = new tflite::MicroInterpreter(model, tflOpsResolver, tensorArena, tensorArenaSize, &tflErrorReporter);

  // Allocate memory for the model's input and output tensors
  tflInterpreter->AllocateTensors();

  // Get pointers for the model's input and output tensors
  tflInputTensor = tflInterpreter->input(0);
  tflOutputTensor = tflInterpreter->output(0);
Serial.println("Tf lite setup ended correctly");

}


String msg = "";
String norm_msg = "";
void loop() {

  while (samplesRead == numSamples) {
  readData();
  processAccelData();
  float aSum = fabs(Ax) + fabs(Ay) + fabs(Az);
  //Serial.println(aSum);

  // check if it's above the threshold if it is the device is moving samples are reset data is taken once again
  if (aSum >= accelerationThreshold) {
    // reset the sample read count
    samplesRead = 0;
    break;
  }
}
  
 while (samplesRead < numSamples) {
     readData();
  //delay(10);
//Envio de datos 
  msg += String(ax) + "," + String(ay) + "," + String(az) + "," + String(gx) + "," + String(gy) + "," + String(gz)+ "\n"; //El mensaje completo contiene el id del cliente y el numero de paquete enviado
  //Serial.println(msg);
/*   int16_t valAx=Ax/ACCELEROMETER_MAXIMUM;
  int16_t valAy=Ay/ACCELEROMETER_MAXIMUM;
  int16_t valAz=Az/ACCELEROMETER_MAXIMUM;
  int16_t valGx=Gx/GYRO_MAXIMUM;
  int16_t valGy=Gy/GYRO_MAXIMUM;
  int16_t valGz=Gz/GYRO_MAXIMUM; */
/*   Serial.print(valAx);
  Serial.print(',');
  Serial.print(valAy); */

      normalize();
      Serial.print(norm_ax);
      Serial.print(",");
      Serial.println();
      // The normalized data is stored into an input tensor
      tflInputTensor->data.f[samplesRead * 6 + 0] = (norm_ax);
      tflInputTensor->data.f[samplesRead * 6 + 1] = (norm_ay);
      tflInputTensor->data.f[samplesRead * 6 + 2] = (norm_az);
      tflInputTensor->data.f[samplesRead * 6 + 3] = (norm_gx);
      tflInputTensor->data.f[samplesRead * 6 + 4] = (norm_gy);
      tflInputTensor->data.f[samplesRead * 6 + 5] = (norm_gz);

      samplesRead++;

      if (samplesRead == numSamples) {
        // Run inferencing
        TfLiteStatus invokeStatus = tflInterpreter->Invoke();
        if (invokeStatus != kTfLiteOk) {
          Serial.println("Invoke failed!");
          while (1);
          return;
        }
        Serial.println(msg);
        //Serial.println(norm_msg);
        msg="";
        norm_msg="";
        // Loop through the output tensor values from the model
        for (int i = 0; i < NUM_GESTURES; i++) {
          Serial.print(GESTURES[i]);
          Serial.print(": ");
          Serial.println(tflOutputTensor->data.f[i], 6);
        }
        Serial.println();
      }
    
  }
/* //Calculo del filtro complementario 
  //Se obtienen convierten los valores para calcular el filtro complementario 
  processAccelData();
  processGyroData();
  //Se calcula el filtro complementario 
  dt = (millis()-tiempo_prev)/1000.0;
  tiempo_prev=millis();
  
  //Calcular los ángulos con acelerometro
  float accel_ang_x=atan(ay/sqrt(pow(Ax,2) + pow(Az,2)))*(180.0/3.14);
  float accel_ang_y=atan(-ax/sqrt(pow(Ay,2) + pow(Az,2)))*(180.0/3.14); */
  
  //Calcular angulo de rotación con giroscopio y filtro complemento  


}
