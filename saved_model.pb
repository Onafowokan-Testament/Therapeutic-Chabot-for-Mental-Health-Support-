т┬
Ьь
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceИ
о
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
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
П
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
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
d
Shape

input"T&
output"out_typeКэout_type"	
Ttype"
out_typetype0:
2	
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
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628ЗХ
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
Adam/v/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*$
shared_nameAdam/v/dense_5/bias
w
'Adam/v/dense_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_5/bias*
_output_shapes
:P*
dtype0
~
Adam/m/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*$
shared_nameAdam/m/dense_5/bias
w
'Adam/m/dense_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_5/bias*
_output_shapes
:P*
dtype0
Ж
Adam/v/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@P*&
shared_nameAdam/v/dense_5/kernel

)Adam/v/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_5/kernel*
_output_shapes

:@P*
dtype0
Ж
Adam/m/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@P*&
shared_nameAdam/m/dense_5/kernel

)Adam/m/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_5/kernel*
_output_shapes

:@P*
dtype0
~
Adam/v/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/v/dense_4/bias
w
'Adam/v/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/bias*
_output_shapes
:@*
dtype0
~
Adam/m/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/m/dense_4/bias
w
'Adam/m/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/bias*
_output_shapes
:@*
dtype0
З
Adam/v/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*&
shared_nameAdam/v/dense_4/kernel
А
)Adam/v/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/kernel*
_output_shapes
:	А@*
dtype0
З
Adam/m/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*&
shared_nameAdam/m/dense_4/kernel
А
)Adam/m/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/kernel*
_output_shapes
:	А@*
dtype0

Adam/v/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/v/dense_3/bias
x
'Adam/v/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/bias*
_output_shapes	
:А*
dtype0

Adam/m/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/m/dense_3/bias
x
'Adam/m/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/bias*
_output_shapes	
:А*
dtype0
И
Adam/v/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ЩА*&
shared_nameAdam/v/dense_3/kernel
Б
)Adam/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/kernel* 
_output_shapes
:
ЩА*
dtype0
И
Adam/m/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ЩА*&
shared_nameAdam/m/dense_3/kernel
Б
)Adam/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/kernel* 
_output_shapes
:
ЩА*
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
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:P*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@P*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:@P*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:@*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	А@*
dtype0
q
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:А*
dtype0
z
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ЩА*
shared_namedense_3/kernel
s
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel* 
_output_shapes
:
ЩА*
dtype0
ж
serving_default_dense_3_inputPlaceholder*:
_output_shapes(
&:$                  ъЩ*
dtype0*/
shape&:$                  ъЩ
п
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_3_inputdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  ъP*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_16409

NoOpNoOp
╙3
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*О3
valueД3BБ3 B·2
█
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
ж
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
е
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator* 
ж
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias*
е
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,_random_generator* 
ж
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses

3kernel
4bias*
.
0
1
$2
%3
34
45*
.
0
1
$2
%3
34
45*
* 
░
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

:trace_0
;trace_1* 

<trace_0
=trace_1* 
* 
Б
>
_variables
?_iterations
@_learning_rate
A_index_dict
B
_momentums
C_velocities
D_update_step_xla*

Eserving_default* 

0
1*

0
1*
* 
У
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ktrace_0* 

Ltrace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
С
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Rtrace_0
Strace_1* 

Ttrace_0
Utrace_1* 
* 

$0
%1*

$0
%1*
* 
У
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

[trace_0* 

\trace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
С
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses* 

btrace_0
ctrace_1* 

dtrace_0
etrace_1* 
* 

30
41*

30
41*
* 
У
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*

ktrace_0* 

ltrace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

m0
n1*
* 
* 
* 
* 
* 
* 
b
?0
o1
p2
q3
r4
s5
t6
u7
v8
w9
x10
y11
z12*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
o0
q1
s2
u3
w4
y5*
.
p0
r1
t2
v3
x4
z5*
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
{	variables
|	keras_api
	}total
	~count*
L
	variables
А	keras_api

Бtotal

Вcount
Г
_fn_kwargs*
`Z
VARIABLE_VALUEAdam/m/dense_3/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_3/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense_3/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/dense_3/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_4/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_4/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense_4/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/dense_4/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_5/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_5/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_5/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_5/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*

}0
~1*

{	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Б0
В1*

	variables*
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
╬
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	iterationlearning_rateAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biasAdam/m/dense_4/kernelAdam/v/dense_4/kernelAdam/m/dense_4/biasAdam/v/dense_4/biasAdam/m/dense_5/kernelAdam/v/dense_5/kernelAdam/m/dense_5/biasAdam/v/dense_5/biastotal_1count_1totalcountConst*%
Tin
2*
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
__inference__traced_save_16749
╔
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	iterationlearning_rateAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biasAdam/m/dense_4/kernelAdam/v/dense_4/kernelAdam/m/dense_4/biasAdam/v/dense_4/biasAdam/m/dense_5/kernelAdam/v/dense_5/kernelAdam/m/dense_5/biasAdam/v/dense_5/biastotal_1count_1totalcount*$
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
!__inference__traced_restore_16830нд
╠
·
B__inference_dense_4_layer_call_and_return_conditional_losses_16516

inputs4
!tensordot_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	А@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:И
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*:
_output_shapes(
&:$                  ъАК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:С
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*9
_output_shapes'
%:#                  ъ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0К
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#                  ъ@b
ReluReluBiasAdd:output:0*
T0*9
_output_shapes'
%:#                  ъ@s
IdentityIdentityRelu:activations:0^NoOp*
T0*9
_output_shapes'
%:#                  ъ@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:$                  ъА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:b ^
:
_output_shapes(
&:$                  ъА
 
_user_specified_nameinputs
Ф
b
)__inference_dropout_3_layer_call_fn_16521

inputs
identityИвStatefulPartitionedCall╤
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  ъ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_16238Б
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*9
_output_shapes'
%:#                  ъ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  ъ@22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#                  ъ@
 
_user_specified_nameinputs
Я
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_16300

inputs

identity_1`
IdentityIdentityinputs*
T0*9
_output_shapes'
%:#                  ъ@m

Identity_1IdentityIdentity:output:0*
T0*9
_output_shapes'
%:#                  ъ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  ъ@:a ]
9
_output_shapes'
%:#                  ъ@
 
_user_specified_nameinputs
ў
С
G__inference_sequential_1_layer_call_and_return_conditional_losses_16308
dense_3_input!
dense_3_16280:
ЩА
dense_3_16282:	А 
dense_4_16291:	А@
dense_4_16293:@
dense_5_16302:@P
dense_5_16304:P
identityИвdense_3/StatefulPartitionedCallвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallГ
dense_3/StatefulPartitionedCallStatefulPartitionedCalldense_3_inputdense_3_16280dense_3_16282*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$                  ъА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_16172ю
dropout_2/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$                  ъА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_16289Ч
dense_4/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_4_16291dense_4_16293*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  ъ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_16221э
dropout_3/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  ъ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_16300Ч
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_5_16302dense_5_16304*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  ъP*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_16270Й
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*9
_output_shapes'
%:#                  ъPИ
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:$                  ъЩ: : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:%!

_user_specified_name16304:%!

_user_specified_name16302:%!

_user_specified_name16293:%!

_user_specified_name16291:%!

_user_specified_name16282:%!

_user_specified_name16280:i e
:
_output_shapes(
&:$                  ъЩ
'
_user_specified_namedense_3_input
Ъ
Р
,__inference_sequential_1_layer_call_fn_16325
dense_3_input
unknown:
ЩА
	unknown_0:	А
	unknown_1:	А@
	unknown_2:@
	unknown_3:@P
	unknown_4:P
identityИвStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCalldense_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  ъP*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_16277Б
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*9
_output_shapes'
%:#                  ъP<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:$                  ъЩ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16321:%!

_user_specified_name16319:%!

_user_specified_name16317:%!

_user_specified_name16315:%!

_user_specified_name16313:%!

_user_specified_name16311:i e
:
_output_shapes(
&:$                  ъЩ
'
_user_specified_namedense_3_input
Їo
д
!__inference__traced_restore_16830
file_prefix3
assignvariableop_dense_3_kernel:
ЩА.
assignvariableop_1_dense_3_bias:	А4
!assignvariableop_2_dense_4_kernel:	А@-
assignvariableop_3_dense_4_bias:@3
!assignvariableop_4_dense_5_kernel:@P-
assignvariableop_5_dense_5_bias:P&
assignvariableop_6_iteration:	 *
 assignvariableop_7_learning_rate: <
(assignvariableop_8_adam_m_dense_3_kernel:
ЩА<
(assignvariableop_9_adam_v_dense_3_kernel:
ЩА6
'assignvariableop_10_adam_m_dense_3_bias:	А6
'assignvariableop_11_adam_v_dense_3_bias:	А<
)assignvariableop_12_adam_m_dense_4_kernel:	А@<
)assignvariableop_13_adam_v_dense_4_kernel:	А@5
'assignvariableop_14_adam_m_dense_4_bias:@5
'assignvariableop_15_adam_v_dense_4_bias:@;
)assignvariableop_16_adam_m_dense_5_kernel:@P;
)assignvariableop_17_adam_v_dense_5_kernel:@P5
'assignvariableop_18_adam_m_dense_5_bias:P5
'assignvariableop_19_adam_v_dense_5_bias:P%
assignvariableop_20_total_1: %
assignvariableop_21_count_1: #
assignvariableop_22_total: #
assignvariableop_23_count: 
identity_25ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9¤

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*г

valueЩ
BЦ
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHв
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
:▓
AssignVariableOpAssignVariableOpassignvariableop_dense_3_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_3_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_4_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_4_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_5_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_5_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:│
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterationIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_7AssignVariableOp assignvariableop_7_learning_rateIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_8AssignVariableOp(assignvariableop_8_adam_m_dense_3_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_9AssignVariableOp(assignvariableop_9_adam_v_dense_3_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_10AssignVariableOp'assignvariableop_10_adam_m_dense_3_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_11AssignVariableOp'assignvariableop_11_adam_v_dense_3_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_12AssignVariableOp)assignvariableop_12_adam_m_dense_4_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_13AssignVariableOp)assignvariableop_13_adam_v_dense_4_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_14AssignVariableOp'assignvariableop_14_adam_m_dense_4_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_v_dense_4_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_m_dense_5_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_v_dense_5_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_m_dense_5_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_v_dense_5_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ▀
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: и
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_25Identity_25:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:3/
-
_user_specified_nameAdam/v/dense_5/bias:3/
-
_user_specified_nameAdam/m/dense_5/bias:51
/
_user_specified_nameAdam/v/dense_5/kernel:51
/
_user_specified_nameAdam/m/dense_5/kernel:3/
-
_user_specified_nameAdam/v/dense_4/bias:3/
-
_user_specified_nameAdam/m/dense_4/bias:51
/
_user_specified_nameAdam/v/dense_4/kernel:51
/
_user_specified_nameAdam/m/dense_4/kernel:3/
-
_user_specified_nameAdam/v/dense_3/bias:3/
-
_user_specified_nameAdam/m/dense_3/bias:5
1
/
_user_specified_nameAdam/v/dense_3/kernel:5	1
/
_user_specified_nameAdam/m/dense_3/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,(
&
_user_specified_namedense_5/bias:.*
(
_user_specified_namedense_5/kernel:,(
&
_user_specified_namedense_4/bias:.*
(
_user_specified_namedense_4/kernel:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Э
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_16471

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @w
dropout/MulMulinputsdropout/Const:output:0*
T0*:
_output_shapes(
&:$                  ъАQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Я
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*:
_output_shapes(
&:$                  ъА*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╣
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*:
_output_shapes(
&:$                  ъАT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ж
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*:
_output_shapes(
&:$                  ъАt
IdentityIdentitydropout/SelectV2:output:0*
T0*:
_output_shapes(
&:$                  ъА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:$                  ъА:b ^
:
_output_shapes(
&:$                  ъА
 
_user_specified_nameinputs
х
E
)__inference_dropout_3_layer_call_fn_16526

inputs
identity┴
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  ъ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_16300r
IdentityIdentityPartitionedCall:output:0*
T0*9
_output_shapes'
%:#                  ъ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  ъ@:a ]
9
_output_shapes'
%:#                  ъ@
 
_user_specified_nameinputs
Ц
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_16238

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @v
dropout/MulMulinputsdropout/Const:output:0*
T0*9
_output_shapes'
%:#                  ъ@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ю
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*9
_output_shapes'
%:#                  ъ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╕
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*9
_output_shapes'
%:#                  ъ@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    е
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*9
_output_shapes'
%:#                  ъ@s
IdentityIdentitydropout/SelectV2:output:0*
T0*9
_output_shapes'
%:#                  ъ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  ъ@:a ]
9
_output_shapes'
%:#                  ъ@
 
_user_specified_nameinputs
╠
∙
B__inference_dense_5_layer_call_and_return_conditional_losses_16583

inputs3
!tensordot_readvariableop_resource:@P-
biasadd_readvariableop_resource:P
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@P*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:З
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*9
_output_shapes'
%:#                  ъ@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:PY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:С
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*9
_output_shapes'
%:#                  ъPr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0К
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#                  ъPh
SoftmaxSoftmaxBiasAdd:output:0*
T0*9
_output_shapes'
%:#                  ъPr
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*9
_output_shapes'
%:#                  ъPV
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):#                  ъ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:a ]
9
_output_shapes'
%:#                  ъ@
 
_user_specified_nameinputs
╠
∙
B__inference_dense_5_layer_call_and_return_conditional_losses_16270

inputs3
!tensordot_readvariableop_resource:@P-
biasadd_readvariableop_resource:P
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@P*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:З
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*9
_output_shapes'
%:#                  ъ@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:PY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:С
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*9
_output_shapes'
%:#                  ъPr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0К
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#                  ъPh
SoftmaxSoftmaxBiasAdd:output:0*
T0*9
_output_shapes'
%:#                  ъPr
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*9
_output_shapes'
%:#                  ъPV
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):#                  ъ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:a ]
9
_output_shapes'
%:#                  ъ@
 
_user_specified_nameinputs
Ъ
Р
,__inference_sequential_1_layer_call_fn_16342
dense_3_input
unknown:
ЩА
	unknown_0:	А
	unknown_1:	А@
	unknown_2:@
	unknown_3:@P
	unknown_4:P
identityИвStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCalldense_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  ъP*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_16308Б
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*9
_output_shapes'
%:#                  ъP<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:$                  ъЩ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16338:%!

_user_specified_name16336:%!

_user_specified_name16334:%!

_user_specified_name16332:%!

_user_specified_name16330:%!

_user_specified_name16328:i e
:
_output_shapes(
&:$                  ъЩ
'
_user_specified_namedense_3_input
ъ

З
#__inference_signature_wrapper_16409
dense_3_input
unknown:
ЩА
	unknown_0:	А
	unknown_1:	А@
	unknown_2:@
	unknown_3:@P
	unknown_4:P
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCalldense_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  ъP*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_16139Б
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*9
_output_shapes'
%:#                  ъP<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:$                  ъЩ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16405:%!

_user_specified_name16403:%!

_user_specified_name16401:%!

_user_specified_name16399:%!

_user_specified_name16397:%!

_user_specified_name16395:i e
:
_output_shapes(
&:$                  ъЩ
'
_user_specified_namedense_3_input
┤
Х
'__inference_dense_4_layer_call_fn_16485

inputs
unknown:	А@
	unknown_0:@
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  ъ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_16221Б
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*9
_output_shapes'
%:#                  ъ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:$                  ъА: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16481:%!

_user_specified_name16479:b ^
:
_output_shapes(
&:$                  ъА
 
_user_specified_nameinputs
Э
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_16189

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @w
dropout/MulMulinputsdropout/Const:output:0*
T0*:
_output_shapes(
&:$                  ъАQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Я
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*:
_output_shapes(
&:$                  ъА*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╣
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*:
_output_shapes(
&:$                  ъАT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ж
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*:
_output_shapes(
&:$                  ъАt
IdentityIdentitydropout/SelectV2:output:0*
T0*:
_output_shapes(
&:$                  ъА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:$                  ъА:b ^
:
_output_shapes(
&:$                  ъА
 
_user_specified_nameinputs
Иx
О
 __inference__wrapped_model_16139
dense_3_inputJ
6sequential_1_dense_3_tensordot_readvariableop_resource:
ЩАC
4sequential_1_dense_3_biasadd_readvariableop_resource:	АI
6sequential_1_dense_4_tensordot_readvariableop_resource:	А@B
4sequential_1_dense_4_biasadd_readvariableop_resource:@H
6sequential_1_dense_5_tensordot_readvariableop_resource:@PB
4sequential_1_dense_5_biasadd_readvariableop_resource:P
identityИв+sequential_1/dense_3/BiasAdd/ReadVariableOpв-sequential_1/dense_3/Tensordot/ReadVariableOpв+sequential_1/dense_4/BiasAdd/ReadVariableOpв-sequential_1/dense_4/Tensordot/ReadVariableOpв+sequential_1/dense_5/BiasAdd/ReadVariableOpв-sequential_1/dense_5/Tensordot/ReadVariableOpж
-sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
ЩА*
dtype0m
#sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:x
#sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          o
$sequential_1/dense_3/Tensordot/ShapeShapedense_3_input*
T0*
_output_shapes
::э╧n
,sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : П
'sequential_1/dense_3/Tensordot/GatherV2GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/free:output:05sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : У
)sequential_1/dense_3/Tensordot/GatherV2_1GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/axes:output:07sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: н
#sequential_1/dense_3/Tensordot/ProdProd0sequential_1/dense_3/Tensordot/GatherV2:output:0-sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: │
%sequential_1/dense_3/Tensordot/Prod_1Prod2sequential_1/dense_3/Tensordot/GatherV2_1:output:0/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ё
%sequential_1/dense_3/Tensordot/concatConcatV2,sequential_1/dense_3/Tensordot/free:output:0,sequential_1/dense_3/Tensordot/axes:output:03sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:╕
$sequential_1/dense_3/Tensordot/stackPack,sequential_1/dense_3/Tensordot/Prod:output:0.sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:╣
(sequential_1/dense_3/Tensordot/transpose	Transposedense_3_input.sequential_1/dense_3/Tensordot/concat:output:0*
T0*:
_output_shapes(
&:$                  ъЩ╔
&sequential_1/dense_3/Tensordot/ReshapeReshape,sequential_1/dense_3/Tensordot/transpose:y:0-sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  ╩
%sequential_1/dense_3/Tensordot/MatMulMatMul/sequential_1/dense_3/Tensordot/Reshape:output:05sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аq
&sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аn
,sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : √
'sequential_1/dense_3/Tensordot/concat_1ConcatV20sequential_1/dense_3/Tensordot/GatherV2:output:0/sequential_1/dense_3/Tensordot/Const_2:output:05sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:╤
sequential_1/dense_3/TensordotReshape/sequential_1/dense_3/Tensordot/MatMul:product:00sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*:
_output_shapes(
&:$                  ъАЭ
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╩
sequential_1/dense_3/BiasAddBiasAdd'sequential_1/dense_3/Tensordot:output:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*:
_output_shapes(
&:$                  ъАН
sequential_1/dense_3/ReluRelu%sequential_1/dense_3/BiasAdd:output:0*
T0*:
_output_shapes(
&:$                  ъАЩ
sequential_1/dropout_2/IdentityIdentity'sequential_1/dense_3/Relu:activations:0*
T0*:
_output_shapes(
&:$                  ъАе
-sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	А@*
dtype0m
#sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:x
#sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          К
$sequential_1/dense_4/Tensordot/ShapeShape(sequential_1/dropout_2/Identity:output:0*
T0*
_output_shapes
::э╧n
,sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : П
'sequential_1/dense_4/Tensordot/GatherV2GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/free:output:05sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : У
)sequential_1/dense_4/Tensordot/GatherV2_1GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/axes:output:07sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: н
#sequential_1/dense_4/Tensordot/ProdProd0sequential_1/dense_4/Tensordot/GatherV2:output:0-sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: │
%sequential_1/dense_4/Tensordot/Prod_1Prod2sequential_1/dense_4/Tensordot/GatherV2_1:output:0/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ё
%sequential_1/dense_4/Tensordot/concatConcatV2,sequential_1/dense_4/Tensordot/free:output:0,sequential_1/dense_4/Tensordot/axes:output:03sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:╕
$sequential_1/dense_4/Tensordot/stackPack,sequential_1/dense_4/Tensordot/Prod:output:0.sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:╘
(sequential_1/dense_4/Tensordot/transpose	Transpose(sequential_1/dropout_2/Identity:output:0.sequential_1/dense_4/Tensordot/concat:output:0*
T0*:
_output_shapes(
&:$                  ъА╔
&sequential_1/dense_4/Tensordot/ReshapeReshape,sequential_1/dense_4/Tensordot/transpose:y:0-sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  ╔
%sequential_1/dense_4/Tensordot/MatMulMatMul/sequential_1/dense_4/Tensordot/Reshape:output:05sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @p
&sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@n
,sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : √
'sequential_1/dense_4/Tensordot/concat_1ConcatV20sequential_1/dense_4/Tensordot/GatherV2:output:0/sequential_1/dense_4/Tensordot/Const_2:output:05sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:╨
sequential_1/dense_4/TensordotReshape/sequential_1/dense_4/Tensordot/MatMul:product:00sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*9
_output_shapes'
%:#                  ъ@Ь
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╔
sequential_1/dense_4/BiasAddBiasAdd'sequential_1/dense_4/Tensordot:output:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#                  ъ@М
sequential_1/dense_4/ReluRelu%sequential_1/dense_4/BiasAdd:output:0*
T0*9
_output_shapes'
%:#                  ъ@Ш
sequential_1/dropout_3/IdentityIdentity'sequential_1/dense_4/Relu:activations:0*
T0*9
_output_shapes'
%:#                  ъ@д
-sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

:@P*
dtype0m
#sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:x
#sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          К
$sequential_1/dense_5/Tensordot/ShapeShape(sequential_1/dropout_3/Identity:output:0*
T0*
_output_shapes
::э╧n
,sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : П
'sequential_1/dense_5/Tensordot/GatherV2GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/free:output:05sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : У
)sequential_1/dense_5/Tensordot/GatherV2_1GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/axes:output:07sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: н
#sequential_1/dense_5/Tensordot/ProdProd0sequential_1/dense_5/Tensordot/GatherV2:output:0-sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: │
%sequential_1/dense_5/Tensordot/Prod_1Prod2sequential_1/dense_5/Tensordot/GatherV2_1:output:0/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ё
%sequential_1/dense_5/Tensordot/concatConcatV2,sequential_1/dense_5/Tensordot/free:output:0,sequential_1/dense_5/Tensordot/axes:output:03sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:╕
$sequential_1/dense_5/Tensordot/stackPack,sequential_1/dense_5/Tensordot/Prod:output:0.sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:╙
(sequential_1/dense_5/Tensordot/transpose	Transpose(sequential_1/dropout_3/Identity:output:0.sequential_1/dense_5/Tensordot/concat:output:0*
T0*9
_output_shapes'
%:#                  ъ@╔
&sequential_1/dense_5/Tensordot/ReshapeReshape,sequential_1/dense_5/Tensordot/transpose:y:0-sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  ╔
%sequential_1/dense_5/Tensordot/MatMulMatMul/sequential_1/dense_5/Tensordot/Reshape:output:05sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Pp
&sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Pn
,sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : √
'sequential_1/dense_5/Tensordot/concat_1ConcatV20sequential_1/dense_5/Tensordot/GatherV2:output:0/sequential_1/dense_5/Tensordot/Const_2:output:05sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:╨
sequential_1/dense_5/TensordotReshape/sequential_1/dense_5/Tensordot/MatMul:product:00sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*9
_output_shapes'
%:#                  ъPЬ
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0╔
sequential_1/dense_5/BiasAddBiasAdd'sequential_1/dense_5/Tensordot:output:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#                  ъPТ
sequential_1/dense_5/SoftmaxSoftmax%sequential_1/dense_5/BiasAdd:output:0*
T0*9
_output_shapes'
%:#                  ъPЗ
IdentityIdentity&sequential_1/dense_5/Softmax:softmax:0^NoOp*
T0*9
_output_shapes'
%:#                  ъP╝
NoOpNoOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp.^sequential_1/dense_3/Tensordot/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp.^sequential_1/dense_4/Tensordot/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp.^sequential_1/dense_5/Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:$                  ъЩ: : : : : : 2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2^
-sequential_1/dense_3/Tensordot/ReadVariableOp-sequential_1/dense_3/Tensordot/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2^
-sequential_1/dense_4/Tensordot/ReadVariableOp-sequential_1/dense_4/Tensordot/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2^
-sequential_1/dense_5/Tensordot/ReadVariableOp-sequential_1/dense_5/Tensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
:
_output_shapes(
&:$                  ъЩ
'
_user_specified_namedense_3_input
№║
┤
__inference__traced_save_16749
file_prefix9
%read_disablecopyonread_dense_3_kernel:
ЩА4
%read_1_disablecopyonread_dense_3_bias:	А:
'read_2_disablecopyonread_dense_4_kernel:	А@3
%read_3_disablecopyonread_dense_4_bias:@9
'read_4_disablecopyonread_dense_5_kernel:@P3
%read_5_disablecopyonread_dense_5_bias:P,
"read_6_disablecopyonread_iteration:	 0
&read_7_disablecopyonread_learning_rate: B
.read_8_disablecopyonread_adam_m_dense_3_kernel:
ЩАB
.read_9_disablecopyonread_adam_v_dense_3_kernel:
ЩА<
-read_10_disablecopyonread_adam_m_dense_3_bias:	А<
-read_11_disablecopyonread_adam_v_dense_3_bias:	АB
/read_12_disablecopyonread_adam_m_dense_4_kernel:	А@B
/read_13_disablecopyonread_adam_v_dense_4_kernel:	А@;
-read_14_disablecopyonread_adam_m_dense_4_bias:@;
-read_15_disablecopyonread_adam_v_dense_4_bias:@A
/read_16_disablecopyonread_adam_m_dense_5_kernel:@PA
/read_17_disablecopyonread_adam_v_dense_5_kernel:@P;
-read_18_disablecopyonread_adam_m_dense_5_bias:P;
-read_19_disablecopyonread_adam_v_dense_5_bias:P+
!read_20_disablecopyonread_total_1: +
!read_21_disablecopyonread_count_1: )
read_22_disablecopyonread_total: )
read_23_disablecopyonread_count: 
savev2_const
identity_49ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_14/DisableCopyOnReadвRead_14/ReadVariableOpвRead_15/DisableCopyOnReadвRead_15/ReadVariableOpвRead_16/DisableCopyOnReadвRead_16/ReadVariableOpвRead_17/DisableCopyOnReadвRead_17/ReadVariableOpвRead_18/DisableCopyOnReadвRead_18/ReadVariableOpвRead_19/DisableCopyOnReadвRead_19/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_20/DisableCopyOnReadвRead_20/ReadVariableOpвRead_21/DisableCopyOnReadвRead_21/ReadVariableOpвRead_22/DisableCopyOnReadвRead_22/ReadVariableOpвRead_23/DisableCopyOnReadвRead_23/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
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
: w
Read/DisableCopyOnReadDisableCopyOnRead%read_disablecopyonread_dense_3_kernel"/device:CPU:0*
_output_shapes
 г
Read/ReadVariableOpReadVariableOp%read_disablecopyonread_dense_3_kernel^Read/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ЩА*
dtype0k
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ЩАc

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ЩАy
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_dense_3_bias"/device:CPU:0*
_output_shapes
 в
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_dense_3_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:А{
Read_2/DisableCopyOnReadDisableCopyOnRead'read_2_disablecopyonread_dense_4_kernel"/device:CPU:0*
_output_shapes
 и
Read_2/ReadVariableOpReadVariableOp'read_2_disablecopyonread_dense_4_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А@*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А@d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	А@y
Read_3/DisableCopyOnReadDisableCopyOnRead%read_3_disablecopyonread_dense_4_bias"/device:CPU:0*
_output_shapes
 б
Read_3/ReadVariableOpReadVariableOp%read_3_disablecopyonread_dense_4_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_4/DisableCopyOnReadDisableCopyOnRead'read_4_disablecopyonread_dense_5_kernel"/device:CPU:0*
_output_shapes
 з
Read_4/ReadVariableOpReadVariableOp'read_4_disablecopyonread_dense_5_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@P*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@Pc

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:@Py
Read_5/DisableCopyOnReadDisableCopyOnRead%read_5_disablecopyonread_dense_5_bias"/device:CPU:0*
_output_shapes
 б
Read_5/ReadVariableOpReadVariableOp%read_5_disablecopyonread_dense_5_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:P*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Pa
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:Pv
Read_6/DisableCopyOnReadDisableCopyOnRead"read_6_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ъ
Read_6/ReadVariableOpReadVariableOp"read_6_disablecopyonread_iteration^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 Ю
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_learning_rate^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: В
Read_8/DisableCopyOnReadDisableCopyOnRead.read_8_disablecopyonread_adam_m_dense_3_kernel"/device:CPU:0*
_output_shapes
 ░
Read_8/ReadVariableOpReadVariableOp.read_8_disablecopyonread_adam_m_dense_3_kernel^Read_8/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ЩА*
dtype0p
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ЩАg
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ЩАВ
Read_9/DisableCopyOnReadDisableCopyOnRead.read_9_disablecopyonread_adam_v_dense_3_kernel"/device:CPU:0*
_output_shapes
 ░
Read_9/ReadVariableOpReadVariableOp.read_9_disablecopyonread_adam_v_dense_3_kernel^Read_9/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ЩА*
dtype0p
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ЩАg
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ЩАВ
Read_10/DisableCopyOnReadDisableCopyOnRead-read_10_disablecopyonread_adam_m_dense_3_bias"/device:CPU:0*
_output_shapes
 м
Read_10/ReadVariableOpReadVariableOp-read_10_disablecopyonread_adam_m_dense_3_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes	
:АВ
Read_11/DisableCopyOnReadDisableCopyOnRead-read_11_disablecopyonread_adam_v_dense_3_bias"/device:CPU:0*
_output_shapes
 м
Read_11/ReadVariableOpReadVariableOp-read_11_disablecopyonread_adam_v_dense_3_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:АД
Read_12/DisableCopyOnReadDisableCopyOnRead/read_12_disablecopyonread_adam_m_dense_4_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_12/ReadVariableOpReadVariableOp/read_12_disablecopyonread_adam_m_dense_4_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А@*
dtype0p
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А@f
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:	А@Д
Read_13/DisableCopyOnReadDisableCopyOnRead/read_13_disablecopyonread_adam_v_dense_4_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_13/ReadVariableOpReadVariableOp/read_13_disablecopyonread_adam_v_dense_4_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А@*
dtype0p
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А@f
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:	А@В
Read_14/DisableCopyOnReadDisableCopyOnRead-read_14_disablecopyonread_adam_m_dense_4_bias"/device:CPU:0*
_output_shapes
 л
Read_14/ReadVariableOpReadVariableOp-read_14_disablecopyonread_adam_m_dense_4_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:@В
Read_15/DisableCopyOnReadDisableCopyOnRead-read_15_disablecopyonread_adam_v_dense_4_bias"/device:CPU:0*
_output_shapes
 л
Read_15/ReadVariableOpReadVariableOp-read_15_disablecopyonread_adam_v_dense_4_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:@Д
Read_16/DisableCopyOnReadDisableCopyOnRead/read_16_disablecopyonread_adam_m_dense_5_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_16/ReadVariableOpReadVariableOp/read_16_disablecopyonread_adam_m_dense_5_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@P*
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@Pe
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:@PД
Read_17/DisableCopyOnReadDisableCopyOnRead/read_17_disablecopyonread_adam_v_dense_5_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_17/ReadVariableOpReadVariableOp/read_17_disablecopyonread_adam_v_dense_5_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@P*
dtype0o
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@Pe
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes

:@PВ
Read_18/DisableCopyOnReadDisableCopyOnRead-read_18_disablecopyonread_adam_m_dense_5_bias"/device:CPU:0*
_output_shapes
 л
Read_18/ReadVariableOpReadVariableOp-read_18_disablecopyonread_adam_m_dense_5_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:P*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Pa
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:PВ
Read_19/DisableCopyOnReadDisableCopyOnRead-read_19_disablecopyonread_adam_v_dense_5_bias"/device:CPU:0*
_output_shapes
 л
Read_19/ReadVariableOpReadVariableOp-read_19_disablecopyonread_adam_v_dense_5_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:P*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Pa
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:Pv
Read_20/DisableCopyOnReadDisableCopyOnRead!read_20_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_20/ReadVariableOpReadVariableOp!read_20_disablecopyonread_total_1^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_21/DisableCopyOnReadDisableCopyOnRead!read_21_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_21/ReadVariableOpReadVariableOp!read_21_disablecopyonread_count_1^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_22/DisableCopyOnReadDisableCopyOnReadread_22_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_22/ReadVariableOpReadVariableOpread_22_disablecopyonread_total^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_23/DisableCopyOnReadDisableCopyOnReadread_23_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_23/ReadVariableOpReadVariableOpread_23_disablecopyonread_count^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: ·

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*г

valueЩ
BЦ
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЯ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B √
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *'
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_48Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_49IdentityIdentity_48:output:0^NoOp*
T0*
_output_shapes
: Ч

NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_49Identity_49:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4: : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:3/
-
_user_specified_nameAdam/v/dense_5/bias:3/
-
_user_specified_nameAdam/m/dense_5/bias:51
/
_user_specified_nameAdam/v/dense_5/kernel:51
/
_user_specified_nameAdam/m/dense_5/kernel:3/
-
_user_specified_nameAdam/v/dense_4/bias:3/
-
_user_specified_nameAdam/m/dense_4/bias:51
/
_user_specified_nameAdam/v/dense_4/kernel:51
/
_user_specified_nameAdam/m/dense_4/kernel:3/
-
_user_specified_nameAdam/v/dense_3/bias:3/
-
_user_specified_nameAdam/m/dense_3/bias:5
1
/
_user_specified_nameAdam/v/dense_3/kernel:5	1
/
_user_specified_nameAdam/m/dense_3/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,(
&
_user_specified_namedense_5/bias:.*
(
_user_specified_namedense_5/kernel:,(
&
_user_specified_namedense_4/bias:.*
(
_user_specified_namedense_4/kernel:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
г
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_16289

inputs

identity_1a
IdentityIdentityinputs*
T0*:
_output_shapes(
&:$                  ъАn

Identity_1IdentityIdentity:output:0*
T0*:
_output_shapes(
&:$                  ъА"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:$                  ъА:b ^
:
_output_shapes(
&:$                  ъА
 
_user_specified_nameinputs
▒
Ф
'__inference_dense_5_layer_call_fn_16552

inputs
unknown:@P
	unknown_0:P
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  ъP*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_16270Б
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*9
_output_shapes'
%:#                  ъP<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):#                  ъ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16548:%!

_user_specified_name16546:a ]
9
_output_shapes'
%:#                  ъ@
 
_user_specified_nameinputs
╓
№
B__inference_dense_3_layer_call_and_return_conditional_losses_16172

inputs5
!tensordot_readvariableop_resource:
ЩА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
ЩА*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:И
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*:
_output_shapes(
&:$                  ъЩК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  Л
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:АY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Т
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*:
_output_shapes(
&:$                  ъАs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Л
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*:
_output_shapes(
&:$                  ъАc
ReluReluBiasAdd:output:0*
T0*:
_output_shapes(
&:$                  ъАt
IdentityIdentityRelu:activations:0^NoOp*
T0*:
_output_shapes(
&:$                  ъАV
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:$                  ъЩ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:b ^
:
_output_shapes(
&:$                  ъЩ
 
_user_specified_nameinputs
Ц
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_16538

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @v
dropout/MulMulinputsdropout/Const:output:0*
T0*9
_output_shapes'
%:#                  ъ@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ю
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*9
_output_shapes'
%:#                  ъ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╕
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*9
_output_shapes'
%:#                  ъ@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    е
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*9
_output_shapes'
%:#                  ъ@s
IdentityIdentitydropout/SelectV2:output:0*
T0*9
_output_shapes'
%:#                  ъ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  ъ@:a ]
9
_output_shapes'
%:#                  ъ@
 
_user_specified_nameinputs
г
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_16476

inputs

identity_1a
IdentityIdentityinputs*
T0*:
_output_shapes(
&:$                  ъАn

Identity_1IdentityIdentity:output:0*
T0*:
_output_shapes(
&:$                  ъА"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:$                  ъА:b ^
:
_output_shapes(
&:$                  ъА
 
_user_specified_nameinputs
Ш
b
)__inference_dropout_2_layer_call_fn_16454

inputs
identityИвStatefulPartitionedCall╥
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$                  ъА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_16189В
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*:
_output_shapes(
&:$                  ъА<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:$                  ъА22
StatefulPartitionedCallStatefulPartitionedCall:b ^
:
_output_shapes(
&:$                  ъА
 
_user_specified_nameinputs
╠
·
B__inference_dense_4_layer_call_and_return_conditional_losses_16221

inputs4
!tensordot_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	А@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:И
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*:
_output_shapes(
&:$                  ъАК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:С
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*9
_output_shapes'
%:#                  ъ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0К
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#                  ъ@b
ReluReluBiasAdd:output:0*
T0*9
_output_shapes'
%:#                  ъ@s
IdentityIdentityRelu:activations:0^NoOp*
T0*9
_output_shapes'
%:#                  ъ@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:$                  ъА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:b ^
:
_output_shapes(
&:$                  ъА
 
_user_specified_nameinputs
╓
№
B__inference_dense_3_layer_call_and_return_conditional_losses_16449

inputs5
!tensordot_readvariableop_resource:
ЩА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
ЩА*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:И
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*:
_output_shapes(
&:$                  ъЩК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  Л
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:АY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Т
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*:
_output_shapes(
&:$                  ъАs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Л
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*:
_output_shapes(
&:$                  ъАc
ReluReluBiasAdd:output:0*
T0*:
_output_shapes(
&:$                  ъАt
IdentityIdentityRelu:activations:0^NoOp*
T0*:
_output_shapes(
&:$                  ъАV
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:$                  ъЩ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:b ^
:
_output_shapes(
&:$                  ъЩ
 
_user_specified_nameinputs
╕
Ч
'__inference_dense_3_layer_call_fn_16418

inputs
unknown:
ЩА
	unknown_0:	А
identityИвStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$                  ъА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_16172В
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*:
_output_shapes(
&:$                  ъА<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:$                  ъЩ: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16414:%!

_user_specified_name16412:b ^
:
_output_shapes(
&:$                  ъЩ
 
_user_specified_nameinputs
ы
┘
G__inference_sequential_1_layer_call_and_return_conditional_losses_16277
dense_3_input!
dense_3_16173:
ЩА
dense_3_16175:	А 
dense_4_16222:	А@
dense_4_16224:@
dense_5_16271:@P
dense_5_16273:P
identityИвdense_3/StatefulPartitionedCallвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallв!dropout_2/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallГ
dense_3/StatefulPartitionedCallStatefulPartitionedCalldense_3_inputdense_3_16173dense_3_16175*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$                  ъА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_16172■
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$                  ъА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_16189Я
dense_4/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_4_16222dense_4_16224*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  ъ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_16221б
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  ъ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_16238Я
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_5_16271dense_5_16273*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  ъP*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_16270Й
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*9
_output_shapes'
%:#                  ъP╨
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:$                  ъЩ: : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:%!

_user_specified_name16273:%!

_user_specified_name16271:%!

_user_specified_name16224:%!

_user_specified_name16222:%!

_user_specified_name16175:%!

_user_specified_name16173:i e
:
_output_shapes(
&:$                  ъЩ
'
_user_specified_namedense_3_input
Я
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_16543

inputs

identity_1`
IdentityIdentityinputs*
T0*9
_output_shapes'
%:#                  ъ@m

Identity_1IdentityIdentity:output:0*
T0*9
_output_shapes'
%:#                  ъ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  ъ@:a ]
9
_output_shapes'
%:#                  ъ@
 
_user_specified_nameinputs
щ
E
)__inference_dropout_2_layer_call_fn_16459

inputs
identity┬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$                  ъА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_16289s
IdentityIdentityPartitionedCall:output:0*
T0*:
_output_shapes(
&:$                  ъА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:$                  ъА:b ^
:
_output_shapes(
&:$                  ъА
 
_user_specified_nameinputs"╩L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*█
serving_default╟
Z
dense_3_inputI
serving_default_dense_3_input:0$                  ъЩM
dense_5B
StatefulPartitionedCall:0#                  ъPtensorflow/serving/predict:зЦ
ї
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
╗
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
╝
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
╗
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias"
_tf_keras_layer
╝
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,_random_generator"
_tf_keras_layer
╗
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses

3kernel
4bias"
_tf_keras_layer
J
0
1
$2
%3
34
45"
trackable_list_wrapper
J
0
1
$2
%3
34
45"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╦
:trace_0
;trace_12Ф
,__inference_sequential_1_layer_call_fn_16325
,__inference_sequential_1_layer_call_fn_16342╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z:trace_0z;trace_1
Б
<trace_0
=trace_12╩
G__inference_sequential_1_layer_call_and_return_conditional_losses_16277
G__inference_sequential_1_layer_call_and_return_conditional_losses_16308╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z<trace_0z=trace_1
╤B╬
 __inference__wrapped_model_16139dense_3_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ь
>
_variables
?_iterations
@_learning_rate
A_index_dict
B
_momentums
C_velocities
D_update_step_xla"
experimentalOptimizer
,
Eserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
с
Ktrace_02─
'__inference_dense_3_layer_call_fn_16418Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 zKtrace_0
№
Ltrace_02▀
B__inference_dense_3_layer_call_and_return_conditional_losses_16449Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 zLtrace_0
": 
ЩА2dense_3/kernel
:А2dense_3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╣
Rtrace_0
Strace_12В
)__inference_dropout_2_layer_call_fn_16454
)__inference_dropout_2_layer_call_fn_16459й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zRtrace_0zStrace_1
я
Ttrace_0
Utrace_12╕
D__inference_dropout_2_layer_call_and_return_conditional_losses_16471
D__inference_dropout_2_layer_call_and_return_conditional_losses_16476й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zTtrace_0zUtrace_1
"
_generic_user_object
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
с
[trace_02─
'__inference_dense_4_layer_call_fn_16485Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 z[trace_0
№
\trace_02▀
B__inference_dense_4_layer_call_and_return_conditional_losses_16516Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 z\trace_0
!:	А@2dense_4/kernel
:@2dense_4/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
╣
btrace_0
ctrace_12В
)__inference_dropout_3_layer_call_fn_16521
)__inference_dropout_3_layer_call_fn_16526й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zbtrace_0zctrace_1
я
dtrace_0
etrace_12╕
D__inference_dropout_3_layer_call_and_return_conditional_losses_16538
D__inference_dropout_3_layer_call_and_return_conditional_losses_16543й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zdtrace_0zetrace_1
"
_generic_user_object
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
н
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
с
ktrace_02─
'__inference_dense_5_layer_call_fn_16552Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 zktrace_0
№
ltrace_02▀
B__inference_dense_5_layer_call_and_return_conditional_losses_16583Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 zltrace_0
 :@P2dense_5/kernel
:P2dense_5/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
·Bў
,__inference_sequential_1_layer_call_fn_16325dense_3_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
,__inference_sequential_1_layer_call_fn_16342dense_3_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
G__inference_sequential_1_layer_call_and_return_conditional_losses_16277dense_3_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
G__inference_sequential_1_layer_call_and_return_conditional_losses_16308dense_3_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
~
?0
o1
p2
q3
r4
s5
t6
u7
v8
w9
x10
y11
z12"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
J
o0
q1
s2
u3
w4
y5"
trackable_list_wrapper
J
p0
r1
t2
v3
x4
z5"
trackable_list_wrapper
╡2▓п
ж▓в
FullArgSpec*
args"Ъ

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
annotationsк *
 0
╨B═
#__inference_signature_wrapper_16409dense_3_input"Ф
Н▓Й
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
annotationsк *
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
╤B╬
'__inference_dense_3_layer_call_fn_16418inputs"Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 
ьBщ
B__inference_dense_3_layer_call_and_return_conditional_losses_16449inputs"Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
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
фBс
)__inference_dropout_2_layer_call_fn_16454inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
фBс
)__inference_dropout_2_layer_call_fn_16459inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
D__inference_dropout_2_layer_call_and_return_conditional_losses_16471inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
D__inference_dropout_2_layer_call_and_return_conditional_losses_16476inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╤B╬
'__inference_dense_4_layer_call_fn_16485inputs"Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 
ьBщ
B__inference_dense_4_layer_call_and_return_conditional_losses_16516inputs"Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
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
фBс
)__inference_dropout_3_layer_call_fn_16521inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
фBс
)__inference_dropout_3_layer_call_fn_16526inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
D__inference_dropout_3_layer_call_and_return_conditional_losses_16538inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
D__inference_dropout_3_layer_call_and_return_conditional_losses_16543inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╤B╬
'__inference_dense_5_layer_call_fn_16552inputs"Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 
ьBщ
B__inference_dense_5_layer_call_and_return_conditional_losses_16583inputs"Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 
N
{	variables
|	keras_api
	}total
	~count"
_tf_keras_metric
b
	variables
А	keras_api

Бtotal

Вcount
Г
_fn_kwargs"
_tf_keras_metric
':%
ЩА2Adam/m/dense_3/kernel
':%
ЩА2Adam/v/dense_3/kernel
 :А2Adam/m/dense_3/bias
 :А2Adam/v/dense_3/bias
&:$	А@2Adam/m/dense_4/kernel
&:$	А@2Adam/v/dense_4/kernel
:@2Adam/m/dense_4/bias
:@2Adam/v/dense_4/bias
%:#@P2Adam/m/dense_5/kernel
%:#@P2Adam/v/dense_5/kernel
:P2Adam/m/dense_5/bias
:P2Adam/v/dense_5/bias
.
}0
~1"
trackable_list_wrapper
-
{	variables"
_generic_user_object
:  (2total
:  (2count
0
Б0
В1"
trackable_list_wrapper
-
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper╜
 __inference__wrapped_model_16139Ш$%34IвF
?в<
:К7
dense_3_input$                  ъЩ
к "Cк@
>
dense_53К0
dense_5#                  ъP╨
B__inference_dense_3_layer_call_and_return_conditional_losses_16449ЙBв?
8в5
3К0
inputs$                  ъЩ
к "?в<
5К2
tensor_0$                  ъА
Ъ й
'__inference_dense_3_layer_call_fn_16418~Bв?
8в5
3К0
inputs$                  ъЩ
к "4К1
unknown$                  ъА╧
B__inference_dense_4_layer_call_and_return_conditional_losses_16516И$%Bв?
8в5
3К0
inputs$                  ъА
к ">в;
4К1
tensor_0#                  ъ@
Ъ и
'__inference_dense_4_layer_call_fn_16485}$%Bв?
8в5
3К0
inputs$                  ъА
к "3К0
unknown#                  ъ@╬
B__inference_dense_5_layer_call_and_return_conditional_losses_16583З34Aв>
7в4
2К/
inputs#                  ъ@
к ">в;
4К1
tensor_0#                  ъP
Ъ з
'__inference_dense_5_layer_call_fn_16552|34Aв>
7в4
2К/
inputs#                  ъ@
к "3К0
unknown#                  ъP╥
D__inference_dropout_2_layer_call_and_return_conditional_losses_16471ЙFвC
<в9
3К0
inputs$                  ъА
p
к "?в<
5К2
tensor_0$                  ъА
Ъ ╥
D__inference_dropout_2_layer_call_and_return_conditional_losses_16476ЙFвC
<в9
3К0
inputs$                  ъА
p 
к "?в<
5К2
tensor_0$                  ъА
Ъ л
)__inference_dropout_2_layer_call_fn_16454~FвC
<в9
3К0
inputs$                  ъА
p
к "4К1
unknown$                  ъАл
)__inference_dropout_2_layer_call_fn_16459~FвC
<в9
3К0
inputs$                  ъА
p 
к "4К1
unknown$                  ъА╨
D__inference_dropout_3_layer_call_and_return_conditional_losses_16538ЗEвB
;в8
2К/
inputs#                  ъ@
p
к ">в;
4К1
tensor_0#                  ъ@
Ъ ╨
D__inference_dropout_3_layer_call_and_return_conditional_losses_16543ЗEвB
;в8
2К/
inputs#                  ъ@
p 
к ">в;
4К1
tensor_0#                  ъ@
Ъ й
)__inference_dropout_3_layer_call_fn_16521|EвB
;в8
2К/
inputs#                  ъ@
p
к "3К0
unknown#                  ъ@й
)__inference_dropout_3_layer_call_fn_16526|EвB
;в8
2К/
inputs#                  ъ@
p 
к "3К0
unknown#                  ъ@ч
G__inference_sequential_1_layer_call_and_return_conditional_losses_16277Ы$%34QвN
GвD
:К7
dense_3_input$                  ъЩ
p

 
к ">в;
4К1
tensor_0#                  ъP
Ъ ч
G__inference_sequential_1_layer_call_and_return_conditional_losses_16308Ы$%34QвN
GвD
:К7
dense_3_input$                  ъЩ
p 

 
к ">в;
4К1
tensor_0#                  ъP
Ъ ┴
,__inference_sequential_1_layer_call_fn_16325Р$%34QвN
GвD
:К7
dense_3_input$                  ъЩ
p

 
к "3К0
unknown#                  ъP┴
,__inference_sequential_1_layer_call_fn_16342Р$%34QвN
GвD
:К7
dense_3_input$                  ъЩ
p 

 
к "3К0
unknown#                  ъP╤
#__inference_signature_wrapper_16409й$%34ZвW
в 
PкM
K
dense_3_input:К7
dense_3_input$                  ъЩ"Cк@
>
dense_53К0
dense_5#                  ъP