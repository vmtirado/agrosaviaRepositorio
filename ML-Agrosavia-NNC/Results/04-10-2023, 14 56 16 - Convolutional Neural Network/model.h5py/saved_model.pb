дц
д≥
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58∞№
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
~
Adam/v/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_3/bias
w
'Adam/v/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_3/bias
w
'Adam/m/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/bias*
_output_shapes
:*
dtype0
З
Adam/v/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ј*&
shared_nameAdam/v/dense_3/kernel
А
)Adam/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/kernel*
_output_shapes
:	ј*
dtype0
З
Adam/m/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ј*&
shared_nameAdam/m/dense_3/kernel
А
)Adam/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/kernel*
_output_shapes
:	ј*
dtype0
А
Adam/v/conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/conv2d_7/bias
y
(Adam/v/conv2d_7/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_7/bias*
_output_shapes
:*
dtype0
А
Adam/m/conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/conv2d_7/bias
y
(Adam/m/conv2d_7/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_7/bias*
_output_shapes
:*
dtype0
Р
Adam/v/conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:-*'
shared_nameAdam/v/conv2d_7/kernel
Й
*Adam/v/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_7/kernel*&
_output_shapes
:-*
dtype0
Р
Adam/m/conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:-*'
shared_nameAdam/m/conv2d_7/kernel
Й
*Adam/m/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_7/kernel*&
_output_shapes
:-*
dtype0
А
Adam/v/conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:-*%
shared_nameAdam/v/conv2d_6/bias
y
(Adam/v/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/bias*
_output_shapes
:-*
dtype0
А
Adam/m/conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:-*%
shared_nameAdam/m/conv2d_6/bias
y
(Adam/m/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/bias*
_output_shapes
:-*
dtype0
Р
Adam/v/conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:-*'
shared_nameAdam/v/conv2d_6/kernel
Й
*Adam/v/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/kernel*&
_output_shapes
:-*
dtype0
Р
Adam/m/conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:-*'
shared_nameAdam/m/conv2d_6/kernel
Й
*Adam/m/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/kernel*&
_output_shapes
:-*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ј*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	ј*
dtype0
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:*
dtype0
В
conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:-* 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:-*
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:-*
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:-*
dtype0
В
conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:-* 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:-*
dtype0
С
serving_default_conv2d_6_inputPlaceholder*/
_output_shapes
:€€€€€€€€€d*
dtype0*$
shape:€€€€€€€€€d
°
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_6_inputconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasdense_3/kerneldense_3/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference_signature_wrapper_9780

NoOpNoOp
м/
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*І/
valueЭ/BЪ/ BУ/
ќ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
О
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses* 
¶
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias*
.
0
1
2
3
,4
-5*
.
0
1
2
3
,4
-5*
* 
∞
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
6
3trace_0
4trace_1
5trace_2
6trace_3* 
6
7trace_0
8trace_1
9trace_2
:trace_3* 
* 
Б
;
_variables
<_iterations
=_learning_rate
>_index_dict
?
_momentums
@_velocities
A_update_step_xla*

Bserving_default* 

0
1*

0
1*
* 
У
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Htrace_0* 

Itrace_0* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

0
1*
* 
У
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Otrace_0* 

Ptrace_0* 
_Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
С
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses* 

Vtrace_0* 

Wtrace_0* 

,0
-1*

,0
-1*
* 
У
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*

]trace_0* 

^trace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

_0
`1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
b
<0
a1
b2
c3
d4
e5
f6
g7
h8
i9
j10
k11
l12*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
a0
c1
e2
g3
i4
k5*
.
b0
d1
f2
h3
j4
l5*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
m	variables
n	keras_api
	ototal
	pcount*
H
q	variables
r	keras_api
	stotal
	tcount
u
_fn_kwargs*
a[
VARIABLE_VALUEAdam/m/conv2d_6/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_6/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_6/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_6/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_7/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_7/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_7/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_7/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_3/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_3/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_3/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_3/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*

o0
p1*

m	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

s0
t1*

q	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ї	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp*Adam/m/conv2d_6/kernel/Read/ReadVariableOp*Adam/v/conv2d_6/kernel/Read/ReadVariableOp(Adam/m/conv2d_6/bias/Read/ReadVariableOp(Adam/v/conv2d_6/bias/Read/ReadVariableOp*Adam/m/conv2d_7/kernel/Read/ReadVariableOp*Adam/v/conv2d_7/kernel/Read/ReadVariableOp(Adam/m/conv2d_7/bias/Read/ReadVariableOp(Adam/v/conv2d_7/bias/Read/ReadVariableOp)Adam/m/dense_3/kernel/Read/ReadVariableOp)Adam/v/dense_3/kernel/Read/ReadVariableOp'Adam/m/dense_3/bias/Read/ReadVariableOp'Adam/v/dense_3/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*%
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *'
f"R 
__inference__traced_save_10034
’
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasdense_3/kerneldense_3/bias	iterationlearning_rateAdam/m/conv2d_6/kernelAdam/v/conv2d_6/kernelAdam/m/conv2d_6/biasAdam/v/conv2d_6/biasAdam/m/conv2d_7/kernelAdam/v/conv2d_7/kernelAdam/m/conv2d_7/biasAdam/v/conv2d_7/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biastotal_1count_1totalcount*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__traced_restore_10116вк
в
Ц
F__inference_sequential_3_layer_call_and_return_conditional_losses_9597

inputs'
conv2d_6_9549:-
conv2d_6_9551:-'
conv2d_7_9566:-
conv2d_7_9568:
dense_3_9591:	ј
dense_3_9593:
identityИҐ conv2d_6/StatefulPartitionedCallҐ conv2d_7/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallт
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_6_9549conv2d_6_9551*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€b-*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_9548Х
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_9566conv2d_7_9568*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_9565№
flatten_3/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_3_layer_call_and_return_conditional_losses_9577В
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_3_9591dense_3_9593*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_9590w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ѓ
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€d: : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
°

у
A__inference_dense_3_layer_call_and_return_conditional_losses_9939

inputs1
matmul_readvariableop_resource:	ј-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ј*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
З
ы
B__inference_conv2d_6_layer_call_and_return_conditional_losses_9888

inputs8
conv2d_readvariableop_resource:--
biasadd_readvariableop_resource:-
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:-*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€b-*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:-*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€b-^
SoftmaxSoftmaxBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€b-h
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€b-w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
≈
_
C__inference_flatten_3_layer_call_and_return_conditional_losses_9919

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€`:W S
/
_output_shapes
:€€€€€€€€€`
 
_user_specified_nameinputs
З
ы
B__inference_conv2d_6_layer_call_and_return_conditional_losses_9548

inputs8
conv2d_readvariableop_resource:--
biasadd_readvariableop_resource:-
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:-*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€b-*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:-*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€b-^
SoftmaxSoftmaxBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€b-h
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€b-w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
П	
Х
+__inference_sequential_3_layer_call_fn_9797

inputs!
unknown:-
	unknown_0:-#
	unknown_1:-
	unknown_2:
	unknown_3:	ј
	unknown_4:
identityИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_9597o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€d: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
ч
Ф
"__inference_signature_wrapper_9780
conv2d_6_input!
unknown:-
	unknown_0:-#
	unknown_1:-
	unknown_2:
	unknown_3:	ј
	unknown_4:
identityИҐStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallconv2d_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__wrapped_model_9530o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€d: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:€€€€€€€€€d
(
_user_specified_nameconv2d_6_input
І	
Э
+__inference_sequential_3_layer_call_fn_9719
conv2d_6_input!
unknown:-
	unknown_0:-#
	unknown_1:-
	unknown_2:
	unknown_3:	ј
	unknown_4:
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallconv2d_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_9687o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€d: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:€€€€€€€€€d
(
_user_specified_nameconv2d_6_input
Ы6
ы	
__inference__traced_save_10034
file_prefix.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop,
(savev2_conv2d_7_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop5
1savev2_adam_m_conv2d_6_kernel_read_readvariableop5
1savev2_adam_v_conv2d_6_kernel_read_readvariableop3
/savev2_adam_m_conv2d_6_bias_read_readvariableop3
/savev2_adam_v_conv2d_6_bias_read_readvariableop5
1savev2_adam_m_conv2d_7_kernel_read_readvariableop5
1savev2_adam_v_conv2d_7_kernel_read_readvariableop3
/savev2_adam_m_conv2d_7_bias_read_readvariableop3
/savev2_adam_v_conv2d_7_bias_read_readvariableop4
0savev2_adam_m_dense_3_kernel_read_readvariableop4
0savev2_adam_v_dense_3_kernel_read_readvariableop2
.savev2_adam_m_dense_3_bias_read_readvariableop2
.savev2_adam_v_dense_3_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ъ

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*£

valueЩ
BЦ
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЯ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B †

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop1savev2_adam_m_conv2d_6_kernel_read_readvariableop1savev2_adam_v_conv2d_6_kernel_read_readvariableop/savev2_adam_m_conv2d_6_bias_read_readvariableop/savev2_adam_v_conv2d_6_bias_read_readvariableop1savev2_adam_m_conv2d_7_kernel_read_readvariableop1savev2_adam_v_conv2d_7_kernel_read_readvariableop/savev2_adam_m_conv2d_7_bias_read_readvariableop/savev2_adam_v_conv2d_7_bias_read_readvariableop0savev2_adam_m_dense_3_kernel_read_readvariableop0savev2_adam_v_dense_3_kernel_read_readvariableop.savev2_adam_m_dense_3_bias_read_readvariableop.savev2_adam_v_dense_3_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *'
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*и
_input_shapes÷
”: :-:-:-::	ј:: : :-:-:-:-:-:-:::	ј:	ј::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:-: 

_output_shapes
:-:,(
&
_output_shapes
:-: 

_output_shapes
::%!

_output_shapes
:	ј: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :,	(
&
_output_shapes
:-:,
(
&
_output_shapes
:-: 

_output_shapes
:-: 

_output_shapes
:-:,(
&
_output_shapes
:-:,(
&
_output_shapes
:-: 

_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	ј:%!

_output_shapes
:	ј: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ж
Ь
'__inference_conv2d_6_layer_call_fn_9877

inputs!
unknown:-
	unknown_0:-
identityИҐStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€b-*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_9548w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€b-`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€d: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
≈
_
C__inference_flatten_3_layer_call_and_return_conditional_losses_9577

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€`:W S
/
_output_shapes
:€€€€€€€€€`
 
_user_specified_nameinputs
≠
D
(__inference_flatten_3_layer_call_fn_9913

inputs
identityѓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_3_layer_call_and_return_conditional_losses_9577a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€`:W S
/
_output_shapes
:€€€€€€€€€`
 
_user_specified_nameinputs
°

у
A__inference_dense_3_layer_call_and_return_conditional_losses_9590

inputs1
matmul_readvariableop_resource:	ј-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ј*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
ж
Ь
'__inference_conv2d_7_layer_call_fn_9897

inputs!
unknown:-
	unknown_0:
identityИҐStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_9565w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€b-: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€b-
 
_user_specified_nameinputs
І	
Э
+__inference_sequential_3_layer_call_fn_9612
conv2d_6_input!
unknown:-
	unknown_0:-#
	unknown_1:-
	unknown_2:
	unknown_3:	ј
	unknown_4:
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallconv2d_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_9597o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€d: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:€€€€€€€€€d
(
_user_specified_nameconv2d_6_input
Сg
„
!__inference__traced_restore_10116
file_prefix:
 assignvariableop_conv2d_6_kernel:-.
 assignvariableop_1_conv2d_6_bias:-<
"assignvariableop_2_conv2d_7_kernel:-.
 assignvariableop_3_conv2d_7_bias:4
!assignvariableop_4_dense_3_kernel:	ј-
assignvariableop_5_dense_3_bias:&
assignvariableop_6_iteration:	 *
 assignvariableop_7_learning_rate: C
)assignvariableop_8_adam_m_conv2d_6_kernel:-C
)assignvariableop_9_adam_v_conv2d_6_kernel:-6
(assignvariableop_10_adam_m_conv2d_6_bias:-6
(assignvariableop_11_adam_v_conv2d_6_bias:-D
*assignvariableop_12_adam_m_conv2d_7_kernel:-D
*assignvariableop_13_adam_v_conv2d_7_kernel:-6
(assignvariableop_14_adam_m_conv2d_7_bias:6
(assignvariableop_15_adam_v_conv2d_7_bias:<
)assignvariableop_16_adam_m_dense_3_kernel:	ј<
)assignvariableop_17_adam_v_dense_3_kernel:	ј5
'assignvariableop_18_adam_m_dense_3_bias:5
'assignvariableop_19_adam_v_dense_3_bias:%
assignvariableop_20_total_1: %
assignvariableop_21_count_1: #
assignvariableop_22_total: #
assignvariableop_23_count: 
identity_25ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9э

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*£

valueЩ
BЦ
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHҐ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B Ы
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOpAssignVariableOp assignvariableop_conv2d_6_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_6_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_7_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_7_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_3_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_3_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:≥
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterationIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_7AssignVariableOp assignvariableop_7_learning_rateIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_8AssignVariableOp)assignvariableop_8_adam_m_conv2d_6_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_9AssignVariableOp)assignvariableop_9_adam_v_conv2d_6_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_10AssignVariableOp(assignvariableop_10_adam_m_conv2d_6_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_11AssignVariableOp(assignvariableop_11_adam_v_conv2d_6_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_12AssignVariableOp*assignvariableop_12_adam_m_conv2d_7_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_13AssignVariableOp*assignvariableop_13_adam_v_conv2d_7_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_14AssignVariableOp(assignvariableop_14_adam_m_conv2d_7_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_v_conv2d_7_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_m_dense_3_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_v_dense_3_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_m_dense_3_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_v_dense_3_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 я
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: ћ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ъ
Ю
F__inference_sequential_3_layer_call_and_return_conditional_losses_9759
conv2d_6_input'
conv2d_6_9742:-
conv2d_6_9744:-'
conv2d_7_9747:-
conv2d_7_9749:
dense_3_9753:	ј
dense_3_9755:
identityИҐ conv2d_6/StatefulPartitionedCallҐ conv2d_7/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallъ
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCallconv2d_6_inputconv2d_6_9742conv2d_6_9744*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€b-*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_9548Х
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_9747conv2d_7_9749*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_9565№
flatten_3/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_3_layer_call_and_return_conditional_losses_9577В
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_3_9753dense_3_9755*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_9590w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ѓ
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€d: : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:_ [
/
_output_shapes
:€€€€€€€€€d
(
_user_specified_nameconv2d_6_input
ї&
С
__inference__wrapped_model_9530
conv2d_6_inputN
4sequential_3_conv2d_6_conv2d_readvariableop_resource:-C
5sequential_3_conv2d_6_biasadd_readvariableop_resource:-N
4sequential_3_conv2d_7_conv2d_readvariableop_resource:-C
5sequential_3_conv2d_7_biasadd_readvariableop_resource:F
3sequential_3_dense_3_matmul_readvariableop_resource:	јB
4sequential_3_dense_3_biasadd_readvariableop_resource:
identityИҐ,sequential_3/conv2d_6/BiasAdd/ReadVariableOpҐ+sequential_3/conv2d_6/Conv2D/ReadVariableOpҐ,sequential_3/conv2d_7/BiasAdd/ReadVariableOpҐ+sequential_3/conv2d_7/Conv2D/ReadVariableOpҐ+sequential_3/dense_3/BiasAdd/ReadVariableOpҐ*sequential_3/dense_3/MatMul/ReadVariableOp®
+sequential_3/conv2d_6/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:-*
dtype0ќ
sequential_3/conv2d_6/Conv2DConv2Dconv2d_6_input3sequential_3/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€b-*
paddingVALID*
strides
Ю
,sequential_3/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:-*
dtype0њ
sequential_3/conv2d_6/BiasAddBiasAdd%sequential_3/conv2d_6/Conv2D:output:04sequential_3/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€b-К
sequential_3/conv2d_6/SoftmaxSoftmax&sequential_3/conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€b-®
+sequential_3/conv2d_7/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:-*
dtype0з
sequential_3/conv2d_7/Conv2DConv2D'sequential_3/conv2d_6/Softmax:softmax:03sequential_3/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€`*
paddingVALID*
strides
Ю
,sequential_3/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0њ
sequential_3/conv2d_7/BiasAddBiasAdd%sequential_3/conv2d_7/Conv2D:output:04sequential_3/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€`К
sequential_3/conv2d_7/SoftmaxSoftmax&sequential_3/conv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€`m
sequential_3/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@  ђ
sequential_3/flatten_3/ReshapeReshape'sequential_3/conv2d_7/Softmax:softmax:0%sequential_3/flatten_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€јЯ
*sequential_3/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_3_matmul_readvariableop_resource*
_output_shapes
:	ј*
dtype0і
sequential_3/dense_3/MatMulMatMul'sequential_3/flatten_3/Reshape:output:02sequential_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
+sequential_3/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_3/dense_3/BiasAddBiasAdd%sequential_3/dense_3/MatMul:product:03sequential_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€А
sequential_3/dense_3/SoftmaxSoftmax%sequential_3/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€u
IdentityIdentity&sequential_3/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€џ
NoOpNoOp-^sequential_3/conv2d_6/BiasAdd/ReadVariableOp,^sequential_3/conv2d_6/Conv2D/ReadVariableOp-^sequential_3/conv2d_7/BiasAdd/ReadVariableOp,^sequential_3/conv2d_7/Conv2D/ReadVariableOp,^sequential_3/dense_3/BiasAdd/ReadVariableOp+^sequential_3/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€d: : : : : : 2\
,sequential_3/conv2d_6/BiasAdd/ReadVariableOp,sequential_3/conv2d_6/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_6/Conv2D/ReadVariableOp+sequential_3/conv2d_6/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_7/BiasAdd/ReadVariableOp,sequential_3/conv2d_7/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_7/Conv2D/ReadVariableOp+sequential_3/conv2d_7/Conv2D/ReadVariableOp2Z
+sequential_3/dense_3/BiasAdd/ReadVariableOp+sequential_3/dense_3/BiasAdd/ReadVariableOp2X
*sequential_3/dense_3/MatMul/ReadVariableOp*sequential_3/dense_3/MatMul/ReadVariableOp:_ [
/
_output_shapes
:€€€€€€€€€d
(
_user_specified_nameconv2d_6_input
П	
Х
+__inference_sequential_3_layer_call_fn_9814

inputs!
unknown:-
	unknown_0:-#
	unknown_1:-
	unknown_2:
	unknown_3:	ј
	unknown_4:
identityИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_9687o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€d: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
ъ
Ю
F__inference_sequential_3_layer_call_and_return_conditional_losses_9739
conv2d_6_input'
conv2d_6_9722:-
conv2d_6_9724:-'
conv2d_7_9727:-
conv2d_7_9729:
dense_3_9733:	ј
dense_3_9735:
identityИҐ conv2d_6/StatefulPartitionedCallҐ conv2d_7/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallъ
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCallconv2d_6_inputconv2d_6_9722conv2d_6_9724*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€b-*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_9548Х
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_9727conv2d_7_9729*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_9565№
flatten_3/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_3_layer_call_and_return_conditional_losses_9577В
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_3_9733dense_3_9735*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_9590w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ѓ
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€d: : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:_ [
/
_output_shapes
:€€€€€€€€€d
(
_user_specified_nameconv2d_6_input
З
ы
B__inference_conv2d_7_layer_call_and_return_conditional_losses_9565

inputs8
conv2d_readvariableop_resource:--
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:-*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€`*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€`^
SoftmaxSoftmaxBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€`h
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€`w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€b-: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€b-
 
_user_specified_nameinputs
њ
Ф
&__inference_dense_3_layer_call_fn_9928

inputs
unknown:	ј
	unknown_0:
identityИҐStatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_9590o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
З
ы
B__inference_conv2d_7_layer_call_and_return_conditional_losses_9908

inputs8
conv2d_readvariableop_resource:--
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:-*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€`*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€`^
SoftmaxSoftmaxBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€`h
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€`w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€b-: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€b-
 
_user_specified_nameinputs
є
Ф
F__inference_sequential_3_layer_call_and_return_conditional_losses_9868

inputsA
'conv2d_6_conv2d_readvariableop_resource:-6
(conv2d_6_biasadd_readvariableop_resource:-A
'conv2d_7_conv2d_readvariableop_resource:-6
(conv2d_7_biasadd_readvariableop_resource:9
&dense_3_matmul_readvariableop_resource:	ј5
'dense_3_biasadd_readvariableop_resource:
identityИҐconv2d_6/BiasAdd/ReadVariableOpҐconv2d_6/Conv2D/ReadVariableOpҐconv2d_7/BiasAdd/ReadVariableOpҐconv2d_7/Conv2D/ReadVariableOpҐdense_3/BiasAdd/ReadVariableOpҐdense_3/MatMul/ReadVariableOpО
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:-*
dtype0ђ
conv2d_6/Conv2DConv2Dinputs&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€b-*
paddingVALID*
strides
Д
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:-*
dtype0Ш
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€b-p
conv2d_6/SoftmaxSoftmaxconv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€b-О
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:-*
dtype0ј
conv2d_7/Conv2DConv2Dconv2d_6/Softmax:softmax:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€`*
paddingVALID*
strides
Д
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ш
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€`p
conv2d_7/SoftmaxSoftmaxconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€``
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@  Е
flatten_3/ReshapeReshapeconv2d_7/Softmax:softmax:0flatten_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€јЕ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	ј*
dtype0Н
dense_3/MatMulMatMulflatten_3/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Н
NoOpNoOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€d: : : : : : 2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
в
Ц
F__inference_sequential_3_layer_call_and_return_conditional_losses_9687

inputs'
conv2d_6_9670:-
conv2d_6_9672:-'
conv2d_7_9675:-
conv2d_7_9677:
dense_3_9681:	ј
dense_3_9683:
identityИҐ conv2d_6/StatefulPartitionedCallҐ conv2d_7/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallт
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_6_9670conv2d_6_9672*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€b-*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_9548Х
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_9675conv2d_7_9677*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_9565№
flatten_3/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_3_layer_call_and_return_conditional_losses_9577В
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_3_9681dense_3_9683*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_9590w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ѓ
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€d: : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
є
Ф
F__inference_sequential_3_layer_call_and_return_conditional_losses_9841

inputsA
'conv2d_6_conv2d_readvariableop_resource:-6
(conv2d_6_biasadd_readvariableop_resource:-A
'conv2d_7_conv2d_readvariableop_resource:-6
(conv2d_7_biasadd_readvariableop_resource:9
&dense_3_matmul_readvariableop_resource:	ј5
'dense_3_biasadd_readvariableop_resource:
identityИҐconv2d_6/BiasAdd/ReadVariableOpҐconv2d_6/Conv2D/ReadVariableOpҐconv2d_7/BiasAdd/ReadVariableOpҐconv2d_7/Conv2D/ReadVariableOpҐdense_3/BiasAdd/ReadVariableOpҐdense_3/MatMul/ReadVariableOpО
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:-*
dtype0ђ
conv2d_6/Conv2DConv2Dinputs&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€b-*
paddingVALID*
strides
Д
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:-*
dtype0Ш
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€b-p
conv2d_6/SoftmaxSoftmaxconv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€b-О
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:-*
dtype0ј
conv2d_7/Conv2DConv2Dconv2d_6/Softmax:softmax:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€`*
paddingVALID*
strides
Д
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ш
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€`p
conv2d_7/SoftmaxSoftmaxconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€``
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@  Е
flatten_3/ReshapeReshapeconv2d_7/Softmax:softmax:0flatten_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€јЕ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	ј*
dtype0Н
dense_3/MatMulMatMulflatten_3/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Н
NoOpNoOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€d: : : : : : 2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs"Ж
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ј
serving_defaultђ
Q
conv2d_6_input?
 serving_default_conv2d_6_input:0€€€€€€€€€d;
dense_30
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:”Ж
и
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ё
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
Ё
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
•
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias"
_tf_keras_layer
J
0
1
2
3
,4
-5"
trackable_list_wrapper
J
0
1
2
3
,4
-5"
trackable_list_wrapper
 "
trackable_list_wrapper
 
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
б
3trace_0
4trace_1
5trace_2
6trace_32ц
+__inference_sequential_3_layer_call_fn_9612
+__inference_sequential_3_layer_call_fn_9797
+__inference_sequential_3_layer_call_fn_9814
+__inference_sequential_3_layer_call_fn_9719њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z3trace_0z4trace_1z5trace_2z6trace_3
Ќ
7trace_0
8trace_1
9trace_2
:trace_32в
F__inference_sequential_3_layer_call_and_return_conditional_losses_9841
F__inference_sequential_3_layer_call_and_return_conditional_losses_9868
F__inference_sequential_3_layer_call_and_return_conditional_losses_9739
F__inference_sequential_3_layer_call_and_return_conditional_losses_9759њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z7trace_0z8trace_1z9trace_2z:trace_3
—Bќ
__inference__wrapped_model_9530conv2d_6_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ь
;
_variables
<_iterations
=_learning_rate
>_index_dict
?
_momentums
@_velocities
A_update_step_xla"
experimentalOptimizer
,
Bserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
л
Htrace_02ќ
'__inference_conv2d_6_layer_call_fn_9877Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zHtrace_0
Ж
Itrace_02й
B__inference_conv2d_6_layer_call_and_return_conditional_losses_9888Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zItrace_0
):'-2conv2d_6/kernel
:-2conv2d_6/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
л
Otrace_02ќ
'__inference_conv2d_7_layer_call_fn_9897Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zOtrace_0
Ж
Ptrace_02й
B__inference_conv2d_7_layer_call_and_return_conditional_losses_9908Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zPtrace_0
):'-2conv2d_7/kernel
:2conv2d_7/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
м
Vtrace_02ѕ
(__inference_flatten_3_layer_call_fn_9913Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zVtrace_0
З
Wtrace_02к
C__inference_flatten_3_layer_call_and_return_conditional_losses_9919Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zWtrace_0
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
к
]trace_02Ќ
&__inference_dense_3_layer_call_fn_9928Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z]trace_0
Е
^trace_02и
A__inference_dense_3_layer_call_and_return_conditional_losses_9939Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z^trace_0
!:	ј2dense_3/kernel
:2dense_3/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ДBБ
+__inference_sequential_3_layer_call_fn_9612conv2d_6_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
+__inference_sequential_3_layer_call_fn_9797inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
+__inference_sequential_3_layer_call_fn_9814inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
+__inference_sequential_3_layer_call_fn_9719conv2d_6_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
F__inference_sequential_3_layer_call_and_return_conditional_losses_9841inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
F__inference_sequential_3_layer_call_and_return_conditional_losses_9868inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
F__inference_sequential_3_layer_call_and_return_conditional_losses_9739conv2d_6_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
F__inference_sequential_3_layer_call_and_return_conditional_losses_9759conv2d_6_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
~
<0
a1
b2
c3
d4
e5
f6
g7
h8
i9
j10
k11
l12"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
J
a0
c1
e2
g3
i4
k5"
trackable_list_wrapper
J
b0
d1
f2
h3
j4
l5"
trackable_list_wrapper
њ2Љє
Ѓ≤™
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
–BЌ
"__inference_signature_wrapper_9780conv2d_6_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
'__inference_conv2d_6_layer_call_fn_9877inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_conv2d_6_layer_call_and_return_conditional_losses_9888inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
'__inference_conv2d_7_layer_call_fn_9897inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_conv2d_7_layer_call_and_return_conditional_losses_9908inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№Bў
(__inference_flatten_3_layer_call_fn_9913inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
чBф
C__inference_flatten_3_layer_call_and_return_conditional_losses_9919inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЏB„
&__inference_dense_3_layer_call_fn_9928inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
хBт
A__inference_dense_3_layer_call_and_return_conditional_losses_9939inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
N
m	variables
n	keras_api
	ototal
	pcount"
_tf_keras_metric
^
q	variables
r	keras_api
	stotal
	tcount
u
_fn_kwargs"
_tf_keras_metric
.:,-2Adam/m/conv2d_6/kernel
.:,-2Adam/v/conv2d_6/kernel
 :-2Adam/m/conv2d_6/bias
 :-2Adam/v/conv2d_6/bias
.:,-2Adam/m/conv2d_7/kernel
.:,-2Adam/v/conv2d_7/kernel
 :2Adam/m/conv2d_7/bias
 :2Adam/v/conv2d_7/bias
&:$	ј2Adam/m/dense_3/kernel
&:$	ј2Adam/v/dense_3/kernel
:2Adam/m/dense_3/bias
:2Adam/v/dense_3/bias
.
o0
p1"
trackable_list_wrapper
-
m	variables"
_generic_user_object
:  (2total
:  (2count
.
s0
t1"
trackable_list_wrapper
-
q	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperЯ
__inference__wrapped_model_9530|,-?Ґ<
5Ґ2
0К-
conv2d_6_input€€€€€€€€€d
™ "1™.
,
dense_3!К
dense_3€€€€€€€€€є
B__inference_conv2d_6_layer_call_and_return_conditional_losses_9888s7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€d
™ "4Ґ1
*К'
tensor_0€€€€€€€€€b-
Ъ У
'__inference_conv2d_6_layer_call_fn_9877h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€d
™ ")К&
unknown€€€€€€€€€b-є
B__inference_conv2d_7_layer_call_and_return_conditional_losses_9908s7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€b-
™ "4Ґ1
*К'
tensor_0€€€€€€€€€`
Ъ У
'__inference_conv2d_7_layer_call_fn_9897h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€b-
™ ")К&
unknown€€€€€€€€€`©
A__inference_dense_3_layer_call_and_return_conditional_losses_9939d,-0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Г
&__inference_dense_3_layer_call_fn_9928Y,-0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ "!К
unknown€€€€€€€€€ѓ
C__inference_flatten_3_layer_call_and_return_conditional_losses_9919h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€`
™ "-Ґ*
#К 
tensor_0€€€€€€€€€ј
Ъ Й
(__inference_flatten_3_layer_call_fn_9913]7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€`
™ ""К
unknown€€€€€€€€€ј…
F__inference_sequential_3_layer_call_and_return_conditional_losses_9739,-GҐD
=Ґ:
0К-
conv2d_6_input€€€€€€€€€d
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ …
F__inference_sequential_3_layer_call_and_return_conditional_losses_9759,-GҐD
=Ґ:
0К-
conv2d_6_input€€€€€€€€€d
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ѕ
F__inference_sequential_3_layer_call_and_return_conditional_losses_9841w,-?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€d
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ѕ
F__inference_sequential_3_layer_call_and_return_conditional_losses_9868w,-?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€d
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ £
+__inference_sequential_3_layer_call_fn_9612t,-GҐD
=Ґ:
0К-
conv2d_6_input€€€€€€€€€d
p 

 
™ "!К
unknown€€€€€€€€€£
+__inference_sequential_3_layer_call_fn_9719t,-GҐD
=Ґ:
0К-
conv2d_6_input€€€€€€€€€d
p

 
™ "!К
unknown€€€€€€€€€Ы
+__inference_sequential_3_layer_call_fn_9797l,-?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€d
p 

 
™ "!К
unknown€€€€€€€€€Ы
+__inference_sequential_3_layer_call_fn_9814l,-?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€d
p

 
™ "!К
unknown€€€€€€€€€µ
"__inference_signature_wrapper_9780О,-QҐN
Ґ 
G™D
B
conv2d_6_input0К-
conv2d_6_input€€€€€€€€€d"1™.
,
dense_3!К
dense_3€€€€€€€€€