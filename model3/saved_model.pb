αΣ(
Τ¨
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
³
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Α
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
executor_typestring ¨

StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
χ
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleιθelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleιθelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.22v2.9.1-132-g18960c44ad38'

Adam/gru_1/gru_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ΐ*-
shared_nameAdam/gru_1/gru_cell_1/bias/v

0Adam/gru_1/gru_cell_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru_1/gru_cell_1/bias/v*
_output_shapes
:	ΐ*
dtype0
­
(Adam/gru_1/gru_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@ΐ*9
shared_name*(Adam/gru_1/gru_cell_1/recurrent_kernel/v
¦
<Adam/gru_1/gru_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp(Adam/gru_1/gru_cell_1/recurrent_kernel/v*
_output_shapes
:	@ΐ*
dtype0

Adam/gru_1/gru_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ΐ*/
shared_name Adam/gru_1/gru_cell_1/kernel/v

2Adam/gru_1/gru_cell_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gru_1/gru_cell_1/kernel/v*
_output_shapes
:	ΐ*
dtype0

Adam/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/v
y
(Adam/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/v*
_output_shapes
:*
dtype0

Adam/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_15/kernel/v

*Adam/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_14/bias/v
y
(Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/v*
_output_shapes
:*
dtype0

Adam/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_14/kernel/v

*Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/v*
_output_shapes

:@*
dtype0

Adam/gru_1/gru_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ΐ*-
shared_nameAdam/gru_1/gru_cell_1/bias/m

0Adam/gru_1/gru_cell_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru_1/gru_cell_1/bias/m*
_output_shapes
:	ΐ*
dtype0
­
(Adam/gru_1/gru_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@ΐ*9
shared_name*(Adam/gru_1/gru_cell_1/recurrent_kernel/m
¦
<Adam/gru_1/gru_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp(Adam/gru_1/gru_cell_1/recurrent_kernel/m*
_output_shapes
:	@ΐ*
dtype0

Adam/gru_1/gru_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ΐ*/
shared_name Adam/gru_1/gru_cell_1/kernel/m

2Adam/gru_1/gru_cell_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gru_1/gru_cell_1/kernel/m*
_output_shapes
:	ΐ*
dtype0

Adam/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/m
y
(Adam/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/m*
_output_shapes
:*
dtype0

Adam/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_15/kernel/m

*Adam/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_14/bias/m
y
(Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/m*
_output_shapes
:*
dtype0

Adam/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_14/kernel/m

*Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/m*
_output_shapes

:@*
dtype0
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
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	

gru_1/gru_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ΐ*&
shared_namegru_1/gru_cell_1/bias

)gru_1/gru_cell_1/bias/Read/ReadVariableOpReadVariableOpgru_1/gru_cell_1/bias*
_output_shapes
:	ΐ*
dtype0

!gru_1/gru_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@ΐ*2
shared_name#!gru_1/gru_cell_1/recurrent_kernel

5gru_1/gru_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp!gru_1/gru_cell_1/recurrent_kernel*
_output_shapes
:	@ΐ*
dtype0

gru_1/gru_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ΐ*(
shared_namegru_1/gru_cell_1/kernel

+gru_1/gru_cell_1/kernel/Read/ReadVariableOpReadVariableOpgru_1/gru_cell_1/kernel*
_output_shapes
:	ΐ*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
:*
dtype0
z
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_15/kernel
s
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes

:*
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:*
dtype0
z
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_14/kernel
s
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes

:@*
dtype0

NoOpNoOp
Α7
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ό6
valueς6Bο6 Bθ6
Α
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
Α
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
¦
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias*
5
&0
'1
(2
3
4
$5
%6*
5
&0
'1
(2
3
4
$5
%6*
* 
°
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
.trace_0
/trace_1
0trace_2
1trace_3* 
6
2trace_0
3trace_1
4trace_2
5trace_3* 
* 
Β
6iter

7beta_1

8beta_2
	9decay
:learning_ratemnmo$mp%mq&mr'ms(mtvuvv$vw%vx&vy'vz(v{*

;serving_default* 

&0
'1
(2*

&0
'1
(2*
* 


<states
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Btrace_0
Ctrace_1
Dtrace_2
Etrace_3* 
6
Ftrace_0
Gtrace_1
Htrace_2
Itrace_3* 
* 
Σ
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
P_random_generator

&kernel
'recurrent_kernel
(bias*
* 

0
1*

0
1*
* 

Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Vtrace_0* 

Wtrace_0* 
_Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_14/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

$0
%1*

$0
%1*
* 

Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

]trace_0* 

^trace_0* 
_Y
VARIABLE_VALUEdense_15/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_15/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEgru_1/gru_cell_1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!gru_1/gru_cell_1/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEgru_1/gru_cell_1/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*
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
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

0*
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

&0
'1
(2*

&0
'1
(2*
* 

anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*
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
f	variables
g	keras_api
	htotal
	icount*
8
j	variables
k	keras_api
	ltotal
	mcount*
* 
* 
* 
* 
* 

h0
i1*

f	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

l0
m1*

j	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_14/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_15/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_15/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/gru_1/gru_cell_1/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE(Adam/gru_1/gru_cell_1/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/gru_1/gru_cell_1/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_14/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_15/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_15/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/gru_1/gru_cell_1/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE(Adam/gru_1/gru_cell_1/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/gru_1/gru_cell_1/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_8Placeholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
Σ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_8gru_1/gru_cell_1/kernel!gru_1/gru_cell_1/recurrent_kernelgru_1/gru_cell_1/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_583628
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOp+gru_1/gru_cell_1/kernel/Read/ReadVariableOp5gru_1/gru_cell_1/recurrent_kernel/Read/ReadVariableOp)gru_1/gru_cell_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_14/kernel/m/Read/ReadVariableOp(Adam/dense_14/bias/m/Read/ReadVariableOp*Adam/dense_15/kernel/m/Read/ReadVariableOp(Adam/dense_15/bias/m/Read/ReadVariableOp2Adam/gru_1/gru_cell_1/kernel/m/Read/ReadVariableOp<Adam/gru_1/gru_cell_1/recurrent_kernel/m/Read/ReadVariableOp0Adam/gru_1/gru_cell_1/bias/m/Read/ReadVariableOp*Adam/dense_14/kernel/v/Read/ReadVariableOp(Adam/dense_14/bias/v/Read/ReadVariableOp*Adam/dense_15/kernel/v/Read/ReadVariableOp(Adam/dense_15/bias/v/Read/ReadVariableOp2Adam/gru_1/gru_cell_1/kernel/v/Read/ReadVariableOp<Adam/gru_1/gru_cell_1/recurrent_kernel/v/Read/ReadVariableOp0Adam/gru_1/gru_cell_1/bias/v/Read/ReadVariableOpConst*+
Tin$
"2 	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_586156
΄
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_14/kerneldense_14/biasdense_15/kerneldense_15/biasgru_1/gru_cell_1/kernel!gru_1/gru_cell_1/recurrent_kernelgru_1/gru_cell_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_14/kernel/mAdam/dense_14/bias/mAdam/dense_15/kernel/mAdam/dense_15/bias/mAdam/gru_1/gru_cell_1/kernel/m(Adam/gru_1/gru_cell_1/recurrent_kernel/mAdam/gru_1/gru_cell_1/bias/mAdam/dense_14/kernel/vAdam/dense_14/bias/vAdam/dense_15/kernel/vAdam/dense_15/bias/vAdam/gru_1/gru_cell_1/kernel/v(Adam/gru_1/gru_cell_1/recurrent_kernel/vAdam/gru_1/gru_cell_1/bias/v**
Tin#
!2*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_586256ώ&
ζ(
Τ
H__inference_sequential_7_layer_call_and_return_conditional_losses_584448

inputs5
"gru_1_read_readvariableop_resource:	ΐ7
$gru_1_read_1_readvariableop_resource:	@ΐ7
$gru_1_read_2_readvariableop_resource:	ΐ9
'dense_14_matmul_readvariableop_resource:@6
(dense_14_biasadd_readvariableop_resource:9
'dense_15_matmul_readvariableop_resource:6
(dense_15_biasadd_readvariableop_resource:
identity’dense_14/BiasAdd/ReadVariableOp’dense_14/MatMul/ReadVariableOp’dense_15/BiasAdd/ReadVariableOp’dense_15/MatMul/ReadVariableOp’gru_1/Read/ReadVariableOp’gru_1/Read_1/ReadVariableOp’gru_1/Read_2/ReadVariableOpA
gru_1/ShapeShapeinputs*
T0*
_output_shapes
:c
gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ο
gru_1/strided_sliceStridedSlicegru_1/Shape:output:0"gru_1/strided_slice/stack:output:0$gru_1/strided_slice/stack_1:output:0$gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
gru_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
gru_1/zeros/packedPackgru_1/strided_slice:output:0gru_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
gru_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
gru_1/zerosFillgru_1/zeros/packed:output:0gru_1/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@}
gru_1/Read/ReadVariableOpReadVariableOp"gru_1_read_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0g
gru_1/IdentityIdentity!gru_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐ
gru_1/Read_1/ReadVariableOpReadVariableOp$gru_1_read_1_readvariableop_resource*
_output_shapes
:	@ΐ*
dtype0k
gru_1/Identity_1Identity#gru_1/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ΐ
gru_1/Read_2/ReadVariableOpReadVariableOp$gru_1_read_2_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0k
gru_1/Identity_2Identity#gru_1/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐ¨
gru_1/PartitionedCallPartitionedCallinputsgru_1/zeros:output:0gru_1/Identity:output:0gru_1/Identity_1:output:0gru_1/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????@:?????????@:?????????@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_584220
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_14/MatMulMatMulgru_1/PartitionedCall:output:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_15/MatMulMatMuldense_14/Relu:activations:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_15/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????€
NoOpNoOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp^gru_1/Read/ReadVariableOp^gru_1/Read_1/ReadVariableOp^gru_1/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp26
gru_1/Read/ReadVariableOpgru_1/Read/ReadVariableOp2:
gru_1/Read_1/ReadVariableOpgru_1/Read_1/ReadVariableOp2:
gru_1/Read_2/ReadVariableOpgru_1/Read_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
	
ή
while_cond_581914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_581914___redundant_placeholder04
0while_while_cond_581914___redundant_placeholder14
0while_while_cond_581914___redundant_placeholder24
0while_while_cond_581914___redundant_placeholder34
0while_while_cond_581914___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :?????????@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ο4
―
(__inference_gpu_gru_with_fallback_584731

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΐdU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Σ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:??????????????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_743e40a0-9aeb-43a8-8a43-fa5656fa90e8*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
>
£
__inference_standard_gru_585411

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:ΐ:ΐ*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????ΐi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????ΐQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????ΐm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????ΐS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????@Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ε
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_585321*
condR
while_cond_585320*V
output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   Φ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_89fd37ff-157f-4666-bb42-8c58b0d74737*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
ό
Α
A__inference_gru_1_layer_call_and_return_conditional_losses_585248
inputs_0/
read_readvariableop_resource:	ΐ1
read_1_readvariableop_resource:	@ΐ1
read_2_readvariableop_resource:	ΐ

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@ΐ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ΐu
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐ
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????@:?????????@:?????????@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_585033i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
θ-
β
while_body_585699
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????ΐ|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????ΐW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????ΐ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????ΐY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????@Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????@t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????@]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????@o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????@k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????@U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????@l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????@P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????@h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ΰ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:?????????@"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ΐ:!

_output_shapes	
:ΐ:%	!

_output_shapes
:	@ΐ:!


_output_shapes	
:ΐ
·>
Ή
&__forward_gpu_gru_with_fallback_582606

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Χ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:??????????????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ύ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_23dfba24-25c1-4abb-91ec-cea0fcf07a90*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_582471_582607*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
>
£
__inference_standard_gru_582787

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:ΐ:ΐ*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????ΐi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????ΐQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????ΐm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????ΐS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????@Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ε
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_582697*
condR
while_cond_582696*V
output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   Φ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_47ff24ee-e213-4684-8e1a-d9697a377c39*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
	
ή
while_cond_582696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_582696___redundant_placeholder04
0while_while_cond_582696___redundant_placeholder14
0while_while_cond_582696___redundant_placeholder24
0while_while_cond_582696___redundant_placeholder34
0while_while_cond_582696___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :?????????@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ϋ
Ψ

:__inference___backward_gpu_gru_with_fallback_581687_581823
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????@O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ͺ
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????@Ε
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:?????????@}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:?????????@*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:?????????:?????????@: :ΐd*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ε
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@κ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ΐ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ΐm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ΐ   ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ΐr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????@f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ΐh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ΐi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	ΐ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:?????????@:?????????@:?????????@: :?????????@:?????????@:?????????@: ::?????????:?????????@: :ΐd::?????????@: ::::::: : : *<
api_implements*(gru_ac53a050-2044-4c84-a92a-48cfb7c52036*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_581822*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :-)
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:?????????:1
-
+
_output_shapes
:?????????@:

_output_shapes
: :!

_output_shapes	
:ΐd: 

_output_shapes
::-)
'
_output_shapes
:?????????@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
θ-
β
while_body_582697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????ΐ|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????ΐW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????ΐ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????ΐY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????@Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????@t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????@]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????@o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????@k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????@U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????@l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????@P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????@h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ΰ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:?????????@"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ΐ:!

_output_shapes	
:ΐ:%	!

_output_shapes
:	@ΐ:!


_output_shapes	
:ΐ
>
£
__inference_standard_gru_583257

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:ΐ:ΐ*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????ΐi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????ΐQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????ΐm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????ΐS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????@Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ε
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_583167*
condR
while_cond_583166*V
output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   Φ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_a7299587-d4ef-418c-85ca-2527db6c00c3*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
	
ή
while_cond_584129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_584129___redundant_placeholder04
0while_while_cond_584129___redundant_placeholder14
0while_while_cond_584129___redundant_placeholder24
0while_while_cond_584129___redundant_placeholder34
0while_while_cond_584129___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :?????????@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
>
Ή
&__forward_gpu_gru_with_fallback_584432

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ξ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:?????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ύ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_138818bf-0ff9-45d0-a50e-c7379a28d6f4*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_584297_584433*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
ό
Α
A__inference_gru_1_layer_call_and_return_conditional_losses_584870
inputs_0/
read_readvariableop_resource:	ΐ1
read_1_readvariableop_resource:	@ΐ1
read_2_readvariableop_resource:	ΐ

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@ΐ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ΐu
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐ
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????@:?????????@:?????????@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_584655i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
§
΅
H__inference_sequential_7_layer_call_and_return_conditional_losses_583601
input_8
gru_1_583583:	ΐ
gru_1_583585:	@ΐ
gru_1_583587:	ΐ!
dense_14_583590:@
dense_14_583592:!
dense_15_583595:
dense_15_583597:
identity’ dense_14/StatefulPartitionedCall’ dense_15/StatefulPartitionedCall’gru_1/StatefulPartitionedCallυ
gru_1/StatefulPartitionedCallStatefulPartitionedCallinput_8gru_1_583583gru_1_583585gru_1_583587*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_583472
 dense_14/StatefulPartitionedCallStatefulPartitionedCall&gru_1/StatefulPartitionedCall:output:0dense_14_583590dense_14_583592*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_583021
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_583595dense_15_583597*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_583037x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????¬
NoOpNoOp!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_8
·>
Ή
&__forward_gpu_gru_with_fallback_582217

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Χ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:??????????????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ύ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_9fe5b0da-469c-41fe-b680-5fea981232c1*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_582082_582218*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
>
Ή
&__forward_gpu_gru_with_fallback_586001

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ξ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:?????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ύ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_4282bf8d-4255-4e21-83d8-6de6de039cb8*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_585866_586002*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
β
Ώ
A__inference_gru_1_layer_call_and_return_conditional_losses_583002

inputs/
read_readvariableop_resource:	ΐ1
read_1_readvariableop_resource:	@ΐ1
read_2_readvariableop_resource:	ΐ

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@ΐ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ΐu
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐ
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????@:?????????@:?????????@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_582787i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
°	
«
-__inference_sequential_7_layer_call_fn_583061
input_8
unknown:	ΐ
	unknown_0:	@ΐ
	unknown_1:	ΐ
	unknown_2:@
	unknown_3:
	unknown_4:
	unknown_5:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_583044o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_8
΅>
£
__inference_standard_gru_582394

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:ΐ:ΐ*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????ΐi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????ΐQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????ΐm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????ΐS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????@Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ε
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_582304*
condR
while_cond_582303*V
output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   Φ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_23dfba24-25c1-4abb-91ec-cea0fcf07a90*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
Η	
υ
D__inference_dense_15_layer_call_and_return_conditional_losses_586043

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
	
ή
while_cond_585320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_585320___redundant_placeholder04
0while_while_cond_585320___redundant_placeholder14
0while_while_cond_585320___redundant_placeholder24
0while_while_cond_585320___redundant_placeholder34
0while_while_cond_585320___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :?????????@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
	
ή
while_cond_584564
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_584564___redundant_placeholder04
0while_while_cond_584564___redundant_placeholder14
0while_while_cond_584564___redundant_placeholder24
0while_while_cond_584564___redundant_placeholder34
0while_while_cond_584564___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :?????????@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
β
Ώ
A__inference_gru_1_layer_call_and_return_conditional_losses_585626

inputs/
read_readvariableop_resource:	ΐ1
read_1_readvariableop_resource:	@ΐ1
read_2_readvariableop_resource:	ΐ

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@ΐ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ΐu
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐ
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????@:?????????@:?????????@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_585411i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ϋ
Ψ

:__inference___backward_gpu_gru_with_fallback_583334_583470
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????@O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ͺ
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????@Ε
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:?????????@}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:?????????@*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:?????????:?????????@: :ΐd*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ε
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@κ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ΐ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ΐm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ΐ   ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ΐr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????@f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ΐh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ΐi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	ΐ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:?????????@:?????????@:?????????@: :?????????@:?????????@:?????????@: ::?????????:?????????@: :ΐd::?????????@: ::::::: : : *<
api_implements*(gru_a7299587-d4ef-418c-85ca-2527db6c00c3*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_583469*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :-)
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:?????????:1
-
+
_output_shapes
:?????????@:

_output_shapes
: :!

_output_shapes	
:ΐd: 

_output_shapes
::-)
'
_output_shapes
:?????????@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
>
£
__inference_standard_gru_585789

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:ΐ:ΐ*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????ΐi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????ΐQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????ΐm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????ΐS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????@Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ε
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_585699*
condR
while_cond_585698*V
output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   Φ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_4282bf8d-4255-4e21-83d8-6de6de039cb8*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
ϋ
Ψ

:__inference___backward_gpu_gru_with_fallback_585866_586002
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????@O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ͺ
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????@Ε
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:?????????@}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:?????????@*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:?????????:?????????@: :ΐd*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ε
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@κ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ΐ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ΐm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ΐ   ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ΐr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????@f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ΐh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ΐi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	ΐ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:?????????@:?????????@:?????????@: :?????????@:?????????@:?????????@: ::?????????:?????????@: :ΐd::?????????@: ::::::: : : *<
api_implements*(gru_4282bf8d-4255-4e21-83d8-6de6de039cb8*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_586001*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :-)
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:?????????:1
-
+
_output_shapes
:?????????@:

_output_shapes
: :!

_output_shapes	
:ΐd: 

_output_shapes
::-)
'
_output_shapes
:?????????@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
χ
·
&__inference_gru_1_layer_call_fn_584492

inputs
unknown:	ΐ
	unknown_0:	@ΐ
	unknown_1:	ΐ
identity’StatefulPartitionedCallγ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_583472o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ο4
―
(__inference_gpu_gru_with_fallback_585109

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΐdU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Σ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:??????????????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_f96415b8-29ea-41ea-a615-9ac0b20d3238*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias


υ
D__inference_dense_14_layer_call_and_return_conditional_losses_583021

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
Λ4
―
(__inference_gpu_gru_with_fallback_585487

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΐdU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Κ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:?????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_89fd37ff-157f-4666-bb42-8c58b0d74737*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
y
β
"__inference__traced_restore_586256
file_prefix2
 assignvariableop_dense_14_kernel:@.
 assignvariableop_1_dense_14_bias:4
"assignvariableop_2_dense_15_kernel:.
 assignvariableop_3_dense_15_bias:=
*assignvariableop_4_gru_1_gru_cell_1_kernel:	ΐG
4assignvariableop_5_gru_1_gru_cell_1_recurrent_kernel:	@ΐ;
(assignvariableop_6_gru_1_gru_cell_1_bias:	ΐ&
assignvariableop_7_adam_iter:	 (
assignvariableop_8_adam_beta_1: (
assignvariableop_9_adam_beta_2: (
assignvariableop_10_adam_decay: 0
&assignvariableop_11_adam_learning_rate: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: #
assignvariableop_14_total: #
assignvariableop_15_count: <
*assignvariableop_16_adam_dense_14_kernel_m:@6
(assignvariableop_17_adam_dense_14_bias_m:<
*assignvariableop_18_adam_dense_15_kernel_m:6
(assignvariableop_19_adam_dense_15_bias_m:E
2assignvariableop_20_adam_gru_1_gru_cell_1_kernel_m:	ΐO
<assignvariableop_21_adam_gru_1_gru_cell_1_recurrent_kernel_m:	@ΐC
0assignvariableop_22_adam_gru_1_gru_cell_1_bias_m:	ΐ<
*assignvariableop_23_adam_dense_14_kernel_v:@6
(assignvariableop_24_adam_dense_14_bias_v:<
*assignvariableop_25_adam_dense_15_kernel_v:6
(assignvariableop_26_adam_dense_15_bias_v:E
2assignvariableop_27_adam_gru_1_gru_cell_1_kernel_v:	ΐO
<assignvariableop_28_adam_gru_1_gru_cell_1_recurrent_kernel_v:	@ΐC
0assignvariableop_29_adam_gru_1_gru_cell_1_bias_v:	ΐ
identity_31’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_29’AssignVariableOp_3’AssignVariableOp_4’AssignVariableOp_5’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9Ξ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*τ
valueκBηB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ί
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_14_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_14_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_15_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_15_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp*assignvariableop_4_gru_1_gru_cell_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_5AssignVariableOp4assignvariableop_5_gru_1_gru_cell_1_recurrent_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp(assignvariableop_6_gru_1_gru_cell_1_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_iterIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_2Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp&assignvariableop_11_adam_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_14_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_14_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_15_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_15_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_gru_1_gru_cell_1_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_21AssignVariableOp<assignvariableop_21_adam_gru_1_gru_cell_1_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOp_22AssignVariableOp0assignvariableop_22_adam_gru_1_gru_cell_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_14_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_14_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_15_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_15_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_27AssignVariableOp2assignvariableop_27_adam_gru_1_gru_cell_1_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_28AssignVariableOp<assignvariableop_28_adam_gru_1_gru_cell_1_recurrent_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOp_29AssignVariableOp0assignvariableop_29_adam_gru_1_gru_cell_1_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 γ
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: Π
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_31Identity_31:output:0*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
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
>
Ή
&__forward_gpu_gru_with_fallback_584041

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ξ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:?????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ύ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_cd46d93f-1873-4143-bc55-0b64b88baf06*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_583906_584042*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
Γ
Ψ

:__inference___backward_gpu_gru_with_fallback_582082_582218
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????@O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ͺ
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????@Ε
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:?????????@}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:’
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :??????????????????@*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*T
_output_shapesB
@:??????????????????:?????????@: :ΐd*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ω
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ε
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@κ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ΐ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ΐm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ΐ   ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ΐ{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????@f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ΐh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ΐi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	ΐ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*©
_input_shapes
:?????????@:?????????@:?????????@: :?????????@:?????????@:??????????????????@: ::??????????????????:?????????@: :ΐd::?????????@: ::::::: : : *<
api_implements*(gru_9fe5b0da-469c-41fe-b680-5fea981232c1*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_582217*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :-)
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@::6
4
_output_shapes"
 :??????????????????@:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :??????????????????:1
-
+
_output_shapes
:?????????@:

_output_shapes
: :!

_output_shapes	
:ΐd: 

_output_shapes
::-)
'
_output_shapes
:?????????@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Γ
Ψ

:__inference___backward_gpu_gru_with_fallback_585110_585246
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????@O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ͺ
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????@Ε
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:?????????@}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:’
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :??????????????????@*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*T
_output_shapesB
@:??????????????????:?????????@: :ΐd*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ω
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ε
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@κ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ΐ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ΐm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ΐ   ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ΐ{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????@f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ΐh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ΐi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	ΐ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*©
_input_shapes
:?????????@:?????????@:?????????@: :?????????@:?????????@:??????????????????@: ::??????????????????:?????????@: :ΐd::?????????@: ::::::: : : *<
api_implements*(gru_f96415b8-29ea-41ea-a615-9ac0b20d3238*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_585245*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :-)
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@::6
4
_output_shapes"
 :??????????????????@:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :??????????????????:1
-
+
_output_shapes
:?????????@:

_output_shapes
: :!

_output_shapes	
:ΐd: 

_output_shapes
::-)
'
_output_shapes
:?????????@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
θ-
β
while_body_583167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????ΐ|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????ΐW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????ΐ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????ΐY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????@Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????@t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????@]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????@o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????@k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????@U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????@l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????@P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????@h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ΰ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:?????????@"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ΐ:!

_output_shapes	
:ΐ:%	!

_output_shapes
:	@ΐ:!


_output_shapes	
:ΐ
τ1
δ
!__inference__wrapped_model_581838
input_8B
/sequential_7_gru_1_read_readvariableop_resource:	ΐD
1sequential_7_gru_1_read_1_readvariableop_resource:	@ΐD
1sequential_7_gru_1_read_2_readvariableop_resource:	ΐF
4sequential_7_dense_14_matmul_readvariableop_resource:@C
5sequential_7_dense_14_biasadd_readvariableop_resource:F
4sequential_7_dense_15_matmul_readvariableop_resource:C
5sequential_7_dense_15_biasadd_readvariableop_resource:
identity’,sequential_7/dense_14/BiasAdd/ReadVariableOp’+sequential_7/dense_14/MatMul/ReadVariableOp’,sequential_7/dense_15/BiasAdd/ReadVariableOp’+sequential_7/dense_15/MatMul/ReadVariableOp’&sequential_7/gru_1/Read/ReadVariableOp’(sequential_7/gru_1/Read_1/ReadVariableOp’(sequential_7/gru_1/Read_2/ReadVariableOpO
sequential_7/gru_1/ShapeShapeinput_8*
T0*
_output_shapes
:p
&sequential_7/gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(sequential_7/gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(sequential_7/gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 sequential_7/gru_1/strided_sliceStridedSlice!sequential_7/gru_1/Shape:output:0/sequential_7/gru_1/strided_slice/stack:output:01sequential_7/gru_1/strided_slice/stack_1:output:01sequential_7/gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!sequential_7/gru_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@¬
sequential_7/gru_1/zeros/packedPack)sequential_7/gru_1/strided_slice:output:0*sequential_7/gru_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:c
sequential_7/gru_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ₯
sequential_7/gru_1/zerosFill(sequential_7/gru_1/zeros/packed:output:0'sequential_7/gru_1/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@
&sequential_7/gru_1/Read/ReadVariableOpReadVariableOp/sequential_7_gru_1_read_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0
sequential_7/gru_1/IdentityIdentity.sequential_7/gru_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐ
(sequential_7/gru_1/Read_1/ReadVariableOpReadVariableOp1sequential_7_gru_1_read_1_readvariableop_resource*
_output_shapes
:	@ΐ*
dtype0
sequential_7/gru_1/Identity_1Identity0sequential_7/gru_1/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ΐ
(sequential_7/gru_1/Read_2/ReadVariableOpReadVariableOp1sequential_7_gru_1_read_2_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0
sequential_7/gru_1/Identity_2Identity0sequential_7/gru_1/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐκ
"sequential_7/gru_1/PartitionedCallPartitionedCallinput_8!sequential_7/gru_1/zeros:output:0$sequential_7/gru_1/Identity:output:0&sequential_7/gru_1/Identity_1:output:0&sequential_7/gru_1/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????@:?????????@:?????????@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_581610 
+sequential_7/dense_14/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_14_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Ί
sequential_7/dense_14/MatMulMatMul+sequential_7/gru_1/PartitionedCall:output:03sequential_7/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
,sequential_7/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Έ
sequential_7/dense_14/BiasAddBiasAdd&sequential_7/dense_14/MatMul:product:04sequential_7/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|
sequential_7/dense_14/ReluRelu&sequential_7/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 
+sequential_7/dense_15/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_15_matmul_readvariableop_resource*
_output_shapes

:*
dtype0·
sequential_7/dense_15/MatMulMatMul(sequential_7/dense_14/Relu:activations:03sequential_7/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
,sequential_7/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Έ
sequential_7/dense_15/BiasAddBiasAdd&sequential_7/dense_15/MatMul:product:04sequential_7/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????u
IdentityIdentity&sequential_7/dense_15/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp-^sequential_7/dense_14/BiasAdd/ReadVariableOp,^sequential_7/dense_14/MatMul/ReadVariableOp-^sequential_7/dense_15/BiasAdd/ReadVariableOp,^sequential_7/dense_15/MatMul/ReadVariableOp'^sequential_7/gru_1/Read/ReadVariableOp)^sequential_7/gru_1/Read_1/ReadVariableOp)^sequential_7/gru_1/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2\
,sequential_7/dense_14/BiasAdd/ReadVariableOp,sequential_7/dense_14/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_14/MatMul/ReadVariableOp+sequential_7/dense_14/MatMul/ReadVariableOp2\
,sequential_7/dense_15/BiasAdd/ReadVariableOp,sequential_7/dense_15/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_15/MatMul/ReadVariableOp+sequential_7/dense_15/MatMul/ReadVariableOp2P
&sequential_7/gru_1/Read/ReadVariableOp&sequential_7/gru_1/Read/ReadVariableOp2T
(sequential_7/gru_1/Read_1/ReadVariableOp(sequential_7/gru_1/Read_1/ReadVariableOp2T
(sequential_7/gru_1/Read_2/ReadVariableOp(sequential_7/gru_1/Read_2/ReadVariableOp:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_8
	
ή
while_cond_581519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_581519___redundant_placeholder04
0while_while_cond_581519___redundant_placeholder14
0while_while_cond_581519___redundant_placeholder24
0while_while_cond_581519___redundant_placeholder34
0while_while_cond_581519___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :?????????@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
>
Ή
&__forward_gpu_gru_with_fallback_583469

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ξ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:?????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ύ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_a7299587-d4ef-418c-85ca-2527db6c00c3*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_583334_583470*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
€
΄
H__inference_sequential_7_layer_call_and_return_conditional_losses_583044

inputs
gru_1_583003:	ΐ
gru_1_583005:	@ΐ
gru_1_583007:	ΐ!
dense_14_583022:@
dense_14_583024:!
dense_15_583038:
dense_15_583040:
identity’ dense_14/StatefulPartitionedCall’ dense_15/StatefulPartitionedCall’gru_1/StatefulPartitionedCallτ
gru_1/StatefulPartitionedCallStatefulPartitionedCallinputsgru_1_583003gru_1_583005gru_1_583007*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_583002
 dense_14/StatefulPartitionedCallStatefulPartitionedCall&gru_1/StatefulPartitionedCall:output:0dense_14_583022dense_14_583024*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_583021
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_583038dense_15_583040*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_583037x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????¬
NoOpNoOp!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs

Ή
&__inference_gru_1_layer_call_fn_584459
inputs_0
unknown:	ΐ
	unknown_0:	@ΐ
	unknown_1:	ΐ
identity’StatefulPartitionedCallε
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_582220o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
θ-
β
while_body_583739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????ΐ|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????ΐW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????ΐ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????ΐY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????@Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????@t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????@]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????@o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????@k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????@U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????@l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????@P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????@h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ΰ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:?????????@"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ΐ:!

_output_shapes	
:ΐ:%	!

_output_shapes
:	@ΐ:!


_output_shapes	
:ΐ
>
£
__inference_standard_gru_581610

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:ΐ:ΐ*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????ΐi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????ΐQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????ΐm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????ΐS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????@Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ε
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_581520*
condR
while_cond_581519*V
output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   Φ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_ac53a050-2044-4c84-a92a-48cfb7c52036*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
τ
Ώ
A__inference_gru_1_layer_call_and_return_conditional_losses_582609

inputs/
read_readvariableop_resource:	ΐ1
read_1_readvariableop_resource:	@ΐ1
read_2_readvariableop_resource:	ΐ

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@ΐ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ΐu
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐ
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????@:?????????@:?????????@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_582394i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
Γ
Ψ

:__inference___backward_gpu_gru_with_fallback_584732_584868
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????@O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ͺ
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????@Ε
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:?????????@}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:’
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :??????????????????@*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*T
_output_shapesB
@:??????????????????:?????????@: :ΐd*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ω
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ε
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@κ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ΐ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ΐm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ΐ   ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ΐ{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????@f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ΐh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ΐi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	ΐ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*©
_input_shapes
:?????????@:?????????@:?????????@: :?????????@:?????????@:??????????????????@: ::??????????????????:?????????@: :ΐd::?????????@: ::::::: : : *<
api_implements*(gru_743e40a0-9aeb-43a8-8a43-fa5656fa90e8*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_584867*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :-)
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@::6
4
_output_shapes"
 :??????????????????@:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :??????????????????:1
-
+
_output_shapes
:?????????@:

_output_shapes
: :!

_output_shapes	
:ΐd: 

_output_shapes
::-)
'
_output_shapes
:?????????@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ϋ
Ψ

:__inference___backward_gpu_gru_with_fallback_582864_583000
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????@O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ͺ
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????@Ε
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:?????????@}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:?????????@*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:?????????:?????????@: :ΐd*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ε
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@κ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ΐ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ΐm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ΐ   ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ΐr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????@f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ΐh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ΐi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	ΐ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:?????????@:?????????@:?????????@: :?????????@:?????????@:?????????@: ::?????????:?????????@: :ΐd::?????????@: ::::::: : : *<
api_implements*(gru_47ff24ee-e213-4684-8e1a-d9697a377c39*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_582999*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :-)
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:?????????:1
-
+
_output_shapes
:?????????@:

_output_shapes
: :!

_output_shapes	
:ΐd: 

_output_shapes
::-)
'
_output_shapes
:?????????@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	
’
$__inference_signature_wrapper_583628
input_8
unknown:	ΐ
	unknown_0:	@ΐ
	unknown_1:	ΐ
	unknown_2:@
	unknown_3:
	unknown_4:
	unknown_5:
identity’StatefulPartitionedCallψ
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_581838o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_8


υ
D__inference_dense_14_layer_call_and_return_conditional_losses_586024

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
>
Ή
&__forward_gpu_gru_with_fallback_582999

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ξ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:?????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ύ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_47ff24ee-e213-4684-8e1a-d9697a377c39*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_582864_583000*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
θ-
β
while_body_584130
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????ΐ|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????ΐW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????ΐ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????ΐY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????@Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????@t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????@]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????@o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????@k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????@U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????@l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????@P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????@h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ΰ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:?????????@"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ΐ:!

_output_shapes	
:ΐ:%	!

_output_shapes
:	@ΐ:!


_output_shapes	
:ΐ
θ-
β
while_body_584943
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????ΐ|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????ΐW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????ΐ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????ΐY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????@Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????@t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????@]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????@o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????@k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????@U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????@l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????@P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????@h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ΰ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:?????????@"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ΐ:!

_output_shapes	
:ΐ:%	!

_output_shapes
:	@ΐ:!


_output_shapes	
:ΐ
>
£
__inference_standard_gru_583829

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:ΐ:ΐ*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????ΐi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????ΐQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????ΐm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????ΐS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????@Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ε
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_583739*
condR
while_cond_583738*V
output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   Φ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_cd46d93f-1873-4143-bc55-0b64b88baf06*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
΅>
£
__inference_standard_gru_584655

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:ΐ:ΐ*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????ΐi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????ΐQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????ΐm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????ΐS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????@Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ε
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_584565*
condR
while_cond_584564*V
output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   Φ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_743e40a0-9aeb-43a8-8a43-fa5656fa90e8*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
Λ4
―
(__inference_gpu_gru_with_fallback_583333

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΐdU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Κ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:?????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_a7299587-d4ef-418c-85ca-2527db6c00c3*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
§
΅
H__inference_sequential_7_layer_call_and_return_conditional_losses_583580
input_8
gru_1_583562:	ΐ
gru_1_583564:	@ΐ
gru_1_583566:	ΐ!
dense_14_583569:@
dense_14_583571:!
dense_15_583574:
dense_15_583576:
identity’ dense_14/StatefulPartitionedCall’ dense_15/StatefulPartitionedCall’gru_1/StatefulPartitionedCallυ
gru_1/StatefulPartitionedCallStatefulPartitionedCallinput_8gru_1_583562gru_1_583564gru_1_583566*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_583002
 dense_14/StatefulPartitionedCallStatefulPartitionedCall&gru_1/StatefulPartitionedCall:output:0dense_14_583569dense_14_583571*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_583021
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_583574dense_15_583576*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_583037x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????¬
NoOpNoOp!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_8
τ
Ώ
A__inference_gru_1_layer_call_and_return_conditional_losses_582220

inputs/
read_readvariableop_resource:	ΐ1
read_1_readvariableop_resource:	@ΐ1
read_2_readvariableop_resource:	ΐ

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@ΐ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ΐu
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐ
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????@:?????????@:?????????@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_582005i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
΅>
£
__inference_standard_gru_585033

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:ΐ:ΐ*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????ΐi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????ΐQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????ΐm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????ΐS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????@Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ε
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_584943*
condR
while_cond_584942*V
output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   Φ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_f96415b8-29ea-41ea-a615-9ac0b20d3238*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
Γ
Ψ

:__inference___backward_gpu_gru_with_fallback_582471_582607
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????@O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ͺ
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????@Ε
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:?????????@}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:’
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :??????????????????@*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*T
_output_shapesB
@:??????????????????:?????????@: :ΐd*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ω
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ε
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@κ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ΐ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ΐm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ΐ   ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ΐ{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????@f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ΐh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ΐi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	ΐ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*©
_input_shapes
:?????????@:?????????@:?????????@: :?????????@:?????????@:??????????????????@: ::??????????????????:?????????@: :ΐd::?????????@: ::::::: : : *<
api_implements*(gru_23dfba24-25c1-4abb-91ec-cea0fcf07a90*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_582606*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :-)
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@::6
4
_output_shapes"
 :??????????????????@:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :??????????????????:1
-
+
_output_shapes
:?????????@:

_output_shapes
: :!

_output_shapes	
:ΐd: 

_output_shapes
::-)
'
_output_shapes
:?????????@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	
ή
while_cond_585698
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_585698___redundant_placeholder04
0while_while_cond_585698___redundant_placeholder14
0while_while_cond_585698___redundant_placeholder24
0while_while_cond_585698___redundant_placeholder34
0while_while_cond_585698___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :?????????@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
οA

__inference__traced_save_586156
file_prefix.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop6
2savev2_gru_1_gru_cell_1_kernel_read_readvariableop@
<savev2_gru_1_gru_cell_1_recurrent_kernel_read_readvariableop4
0savev2_gru_1_gru_cell_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_14_kernel_m_read_readvariableop3
/savev2_adam_dense_14_bias_m_read_readvariableop5
1savev2_adam_dense_15_kernel_m_read_readvariableop3
/savev2_adam_dense_15_bias_m_read_readvariableop=
9savev2_adam_gru_1_gru_cell_1_kernel_m_read_readvariableopG
Csavev2_adam_gru_1_gru_cell_1_recurrent_kernel_m_read_readvariableop;
7savev2_adam_gru_1_gru_cell_1_bias_m_read_readvariableop5
1savev2_adam_dense_14_kernel_v_read_readvariableop3
/savev2_adam_dense_14_bias_v_read_readvariableop5
1savev2_adam_dense_15_kernel_v_read_readvariableop3
/savev2_adam_dense_15_bias_v_read_readvariableop=
9savev2_adam_gru_1_gru_cell_1_kernel_v_read_readvariableopG
Csavev2_adam_gru_1_gru_cell_1_recurrent_kernel_v_read_readvariableop;
7savev2_adam_gru_1_gru_cell_1_bias_v_read_readvariableop
savev2_const

identity_1’MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Λ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*τ
valueκBηB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH«
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ψ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop2savev2_gru_1_gru_cell_1_kernel_read_readvariableop<savev2_gru_1_gru_cell_1_recurrent_kernel_read_readvariableop0savev2_gru_1_gru_cell_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_14_kernel_m_read_readvariableop/savev2_adam_dense_14_bias_m_read_readvariableop1savev2_adam_dense_15_kernel_m_read_readvariableop/savev2_adam_dense_15_bias_m_read_readvariableop9savev2_adam_gru_1_gru_cell_1_kernel_m_read_readvariableopCsavev2_adam_gru_1_gru_cell_1_recurrent_kernel_m_read_readvariableop7savev2_adam_gru_1_gru_cell_1_bias_m_read_readvariableop1savev2_adam_dense_14_kernel_v_read_readvariableop/savev2_adam_dense_14_bias_v_read_readvariableop1savev2_adam_dense_15_kernel_v_read_readvariableop/savev2_adam_dense_15_bias_v_read_readvariableop9savev2_adam_gru_1_gru_cell_1_kernel_v_read_readvariableopCsavev2_adam_gru_1_gru_cell_1_recurrent_kernel_v_read_readvariableop7savev2_adam_gru_1_gru_cell_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *-
dtypes#
!2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
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

identity_1Identity_1:output:0*ξ
_input_shapesά
Ω: :@::::	ΐ:	@ΐ:	ΐ: : : : : : : : : :@::::	ΐ:	@ΐ:	ΐ:@::::	ΐ:	@ΐ:	ΐ: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	ΐ:%!

_output_shapes
:	@ΐ:%!

_output_shapes
:	ΐ:

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	ΐ:%!

_output_shapes
:	@ΐ:%!

_output_shapes
:	ΐ:$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	ΐ:%!

_output_shapes
:	@ΐ:%!

_output_shapes
:	ΐ:

_output_shapes
: 
­	
ͺ
-__inference_sequential_7_layer_call_fn_583666

inputs
unknown:	ΐ
	unknown_0:	@ΐ
	unknown_1:	ΐ
	unknown_2:@
	unknown_3:
	unknown_4:
	unknown_5:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_583523o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ο4
―
(__inference_gpu_gru_with_fallback_582081

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΐdU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Σ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:??????????????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_9fe5b0da-469c-41fe-b680-5fea981232c1*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
·>
Ή
&__forward_gpu_gru_with_fallback_584867

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Χ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:??????????????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ύ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_743e40a0-9aeb-43a8-8a43-fa5656fa90e8*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_584732_584868*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
­	
ͺ
-__inference_sequential_7_layer_call_fn_583647

inputs
unknown:	ΐ
	unknown_0:	@ΐ
	unknown_1:	ΐ
	unknown_2:@
	unknown_3:
	unknown_4:
	unknown_5:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_583044o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
>
£
__inference_standard_gru_584220

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:ΐ:ΐ*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????ΐi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????ΐQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????ΐm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????ΐS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????@Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ε
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_584130*
condR
while_cond_584129*V
output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   Φ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_138818bf-0ff9-45d0-a50e-c7379a28d6f4*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
β
Ώ
A__inference_gru_1_layer_call_and_return_conditional_losses_583472

inputs/
read_readvariableop_resource:	ΐ1
read_1_readvariableop_resource:	@ΐ1
read_2_readvariableop_resource:	ΐ

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@ΐ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ΐu
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐ
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????@:?????????@:?????????@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_583257i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
β
Ώ
A__inference_gru_1_layer_call_and_return_conditional_losses_586004

inputs/
read_readvariableop_resource:	ΐ1
read_1_readvariableop_resource:	@ΐ1
read_2_readvariableop_resource:	ΐ

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@ΐ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ΐu
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐ
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????@:?????????@:?????????@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_585789i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
Λ4
―
(__inference_gpu_gru_with_fallback_581686

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΐdU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Κ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:?????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_ac53a050-2044-4c84-a92a-48cfb7c52036*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
ϋ
Ψ

:__inference___backward_gpu_gru_with_fallback_583906_584042
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????@O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ͺ
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????@Ε
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:?????????@}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:?????????@*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:?????????:?????????@: :ΐd*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ε
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@κ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ΐ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ΐm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ΐ   ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ΐr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????@f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ΐh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ΐi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	ΐ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:?????????@:?????????@:?????????@: :?????????@:?????????@:?????????@: ::?????????:?????????@: :ΐd::?????????@: ::::::: : : *<
api_implements*(gru_cd46d93f-1873-4143-bc55-0b64b88baf06*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_584041*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :-)
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:?????????:1
-
+
_output_shapes
:?????????@:

_output_shapes
: :!

_output_shapes	
:ΐd: 

_output_shapes
::-)
'
_output_shapes
:?????????@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
>
Ή
&__forward_gpu_gru_with_fallback_581822

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ξ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:?????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ύ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_ac53a050-2044-4c84-a92a-48cfb7c52036*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_581687_581823*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
θ-
β
while_body_581520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????ΐ|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????ΐW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????ΐ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????ΐY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????@Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????@t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????@]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????@o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????@k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????@U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????@l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????@P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????@h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ΰ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:?????????@"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ΐ:!

_output_shapes	
:ΐ:%	!

_output_shapes
:	@ΐ:!


_output_shapes	
:ΐ
	
ή
while_cond_582303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_582303___redundant_placeholder04
0while_while_cond_582303___redundant_placeholder14
0while_while_cond_582303___redundant_placeholder24
0while_while_cond_582303___redundant_placeholder34
0while_while_cond_582303___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :?????????@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Η	
υ
D__inference_dense_15_layer_call_and_return_conditional_losses_583037

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
Β

)__inference_dense_14_layer_call_fn_586013

inputs
unknown:@
	unknown_0:
identity’StatefulPartitionedCallΩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_583021o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
ϋ
Ψ

:__inference___backward_gpu_gru_with_fallback_584297_584433
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????@O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ͺ
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????@Ε
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:?????????@}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:?????????@*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:?????????:?????????@: :ΐd*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ε
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@κ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ΐ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ΐm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ΐ   ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ΐr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????@f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ΐh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ΐi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	ΐ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:?????????@:?????????@:?????????@: :?????????@:?????????@:?????????@: ::?????????:?????????@: :ΐd::?????????@: ::::::: : : *<
api_implements*(gru_138818bf-0ff9-45d0-a50e-c7379a28d6f4*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_584432*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :-)
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:?????????:1
-
+
_output_shapes
:?????????@:

_output_shapes
: :!

_output_shapes	
:ΐd: 

_output_shapes
::-)
'
_output_shapes
:?????????@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
θ-
β
while_body_584565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????ΐ|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????ΐW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????ΐ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????ΐY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????@Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????@t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????@]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????@o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????@k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????@U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????@l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????@P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????@h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ΰ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:?????????@"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ΐ:!

_output_shapes	
:ΐ:%	!

_output_shapes
:	@ΐ:!


_output_shapes	
:ΐ
€
΄
H__inference_sequential_7_layer_call_and_return_conditional_losses_583523

inputs
gru_1_583505:	ΐ
gru_1_583507:	@ΐ
gru_1_583509:	ΐ!
dense_14_583512:@
dense_14_583514:!
dense_15_583517:
dense_15_583519:
identity’ dense_14/StatefulPartitionedCall’ dense_15/StatefulPartitionedCall’gru_1/StatefulPartitionedCallτ
gru_1/StatefulPartitionedCallStatefulPartitionedCallinputsgru_1_583505gru_1_583507gru_1_583509*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_583472
 dense_14/StatefulPartitionedCallStatefulPartitionedCall&gru_1/StatefulPartitionedCall:output:0dense_14_583512dense_14_583514*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_583021
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_583517dense_15_583519*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_583037x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????¬
NoOpNoOp!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
Λ4
―
(__inference_gpu_gru_with_fallback_584296

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΐdU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Κ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:?????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_138818bf-0ff9-45d0-a50e-c7379a28d6f4*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
	
ή
while_cond_583738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_583738___redundant_placeholder04
0while_while_cond_583738___redundant_placeholder14
0while_while_cond_583738___redundant_placeholder24
0while_while_cond_583738___redundant_placeholder34
0while_while_cond_583738___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :?????????@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Λ4
―
(__inference_gpu_gru_with_fallback_585865

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΐdU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Κ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:?????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_4282bf8d-4255-4e21-83d8-6de6de039cb8*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
θ-
β
while_body_581915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????ΐ|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????ΐW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????ΐ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????ΐY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????@Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????@t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????@]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????@o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????@k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????@U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????@l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????@P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????@h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ΰ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:?????????@"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ΐ:!

_output_shapes	
:ΐ:%	!

_output_shapes
:	@ΐ:!


_output_shapes	
:ΐ
Β

)__inference_dense_15_layer_call_fn_586033

inputs
unknown:
	unknown_0:
identity’StatefulPartitionedCallΩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_583037o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
ζ(
Τ
H__inference_sequential_7_layer_call_and_return_conditional_losses_584057

inputs5
"gru_1_read_readvariableop_resource:	ΐ7
$gru_1_read_1_readvariableop_resource:	@ΐ7
$gru_1_read_2_readvariableop_resource:	ΐ9
'dense_14_matmul_readvariableop_resource:@6
(dense_14_biasadd_readvariableop_resource:9
'dense_15_matmul_readvariableop_resource:6
(dense_15_biasadd_readvariableop_resource:
identity’dense_14/BiasAdd/ReadVariableOp’dense_14/MatMul/ReadVariableOp’dense_15/BiasAdd/ReadVariableOp’dense_15/MatMul/ReadVariableOp’gru_1/Read/ReadVariableOp’gru_1/Read_1/ReadVariableOp’gru_1/Read_2/ReadVariableOpA
gru_1/ShapeShapeinputs*
T0*
_output_shapes
:c
gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ο
gru_1/strided_sliceStridedSlicegru_1/Shape:output:0"gru_1/strided_slice/stack:output:0$gru_1/strided_slice/stack_1:output:0$gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
gru_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
gru_1/zeros/packedPackgru_1/strided_slice:output:0gru_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
gru_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
gru_1/zerosFillgru_1/zeros/packed:output:0gru_1/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@}
gru_1/Read/ReadVariableOpReadVariableOp"gru_1_read_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0g
gru_1/IdentityIdentity!gru_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐ
gru_1/Read_1/ReadVariableOpReadVariableOp$gru_1_read_1_readvariableop_resource*
_output_shapes
:	@ΐ*
dtype0k
gru_1/Identity_1Identity#gru_1/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ΐ
gru_1/Read_2/ReadVariableOpReadVariableOp$gru_1_read_2_readvariableop_resource*
_output_shapes
:	ΐ*
dtype0k
gru_1/Identity_2Identity#gru_1/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ΐ¨
gru_1/PartitionedCallPartitionedCallinputsgru_1/zeros:output:0gru_1/Identity:output:0gru_1/Identity_1:output:0gru_1/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????@:?????????@:?????????@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_583829
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_14/MatMulMatMulgru_1/PartitionedCall:output:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_15/MatMulMatMuldense_14/Relu:activations:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_15/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????€
NoOpNoOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp^gru_1/Read/ReadVariableOp^gru_1/Read_1/ReadVariableOp^gru_1/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp26
gru_1/Read/ReadVariableOpgru_1/Read/ReadVariableOp2:
gru_1/Read_1/ReadVariableOpgru_1/Read_1/ReadVariableOp2:
gru_1/Read_2/ReadVariableOpgru_1/Read_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
	
ή
while_cond_583166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_583166___redundant_placeholder04
0while_while_cond_583166___redundant_placeholder14
0while_while_cond_583166___redundant_placeholder24
0while_while_cond_583166___redundant_placeholder34
0while_while_cond_583166___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :?????????@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ο4
―
(__inference_gpu_gru_with_fallback_582470

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΐdU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Σ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:??????????????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_23dfba24-25c1-4abb-91ec-cea0fcf07a90*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
θ-
β
while_body_585321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????ΐ|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????ΐW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????ΐ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????ΐY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????@Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????@t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????@]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????@o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????@k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????@U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????@l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????@P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????@h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ΰ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:?????????@"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ΐ:!

_output_shapes	
:ΐ:%	!

_output_shapes
:	@ΐ:!


_output_shapes	
:ΐ
΅>
£
__inference_standard_gru_582005

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:ΐ:ΐ*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????ΐi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????ΐQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????ΐm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????ΐS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????@Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ε
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_581915*
condR
while_cond_581914*V
output_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   Φ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_9fe5b0da-469c-41fe-b680-5fea981232c1*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
χ
·
&__inference_gru_1_layer_call_fn_584481

inputs
unknown:	ΐ
	unknown_0:	@ΐ
	unknown_1:	ΐ
identity’StatefulPartitionedCallγ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_583002o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
·>
Ή
&__forward_gpu_gru_with_fallback_585245

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Χ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:??????????????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ύ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_f96415b8-29ea-41ea-a615-9ac0b20d3238*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_585110_585246*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
ϋ
Ψ

:__inference___backward_gpu_gru_with_fallback_585488_585624
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????@O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:ͺ
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????@Ε
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:?????????@}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:?????????@*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:?????????:?????????@: :ΐd*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ε
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@κ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: κ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@μ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@‘
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@€
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ΐ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ΐm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ΐ   ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ΐr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????@f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ΐh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ΐi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	ΐ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:?????????@:?????????@:?????????@: :?????????@:?????????@:?????????@: ::?????????:?????????@: :ΐd::?????????@: ::::::: : : *<
api_implements*(gru_89fd37ff-157f-4666-bb42-8c58b0d74737*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_585623*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :-)
'
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:1-
+
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:?????????:1
-
+
_output_shapes
:?????????@:

_output_shapes
: :!

_output_shapes	
:ΐd: 

_output_shapes
::-)
'
_output_shapes
:?????????@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

Ή
&__inference_gru_1_layer_call_fn_584470
inputs_0
unknown:	ΐ
	unknown_0:	@ΐ
	unknown_1:	ΐ
identity’StatefulPartitionedCallε
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_582609o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
Λ4
―
(__inference_gpu_gru_with_fallback_582863

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΐdU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Κ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:?????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_47ff24ee-e213-4684-8e1a-d9697a377c39*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
>
Ή
&__forward_gpu_gru_with_fallback_585623

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ξ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:?????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ύ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_89fd37ff-157f-4666-bb42-8c58b0d74737*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_585488_585624*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
Λ4
―
(__inference_gpu_gru_with_fallback_583905

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:@@:@@:@@*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@Z
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:@a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΐdU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Κ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:?????????@:?????????@: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????@*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????@c

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:?????????@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????@I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????@:	ΐ:	@ΐ:	ΐ*<
api_implements*(gru_cd46d93f-1873-4143-bc55-0b64b88baf06*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ΐ
 
_user_specified_namekernel:QM

_output_shapes
:	@ΐ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	ΐ

_user_specified_namebias
	
ή
while_cond_584942
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_584942___redundant_placeholder04
0while_while_cond_584942___redundant_placeholder14
0while_while_cond_584942___redundant_placeholder24
0while_while_cond_584942___redundant_placeholder34
0while_while_cond_584942___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :?????????@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
°	
«
-__inference_sequential_7_layer_call_fn_583559
input_8
unknown:	ΐ
	unknown_0:	@ΐ
	unknown_1:	ΐ
	unknown_2:@
	unknown_3:
	unknown_4:
	unknown_5:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_583523o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_8
θ-
β
while_body_582304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????ΐ|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????ΐW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????ΐ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????ΐY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????@:?????????@:?????????@*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????@Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????@t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????@]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????@o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????@k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????@U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????@l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????@P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????@h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ΰ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:?????????@"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????@: : :	ΐ:ΐ:	@ΐ:ΐ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ΐ:!

_output_shapes	
:ΐ:%	!

_output_shapes
:	@ΐ:!


_output_shapes	
:ΐ"ΏL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*―
serving_default
?
input_84
serving_default_input_8:0?????????<
dense_150
StatefulPartitionedCall:0?????????tensorflow/serving/predict:
Ϋ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ϊ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
»
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias"
_tf_keras_layer
Q
&0
'1
(2
3
4
$5
%6"
trackable_list_wrapper
Q
&0
'1
(2
3
4
$5
%6"
trackable_list_wrapper
 "
trackable_list_wrapper
Κ
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
κ
.trace_0
/trace_1
0trace_2
1trace_32?
-__inference_sequential_7_layer_call_fn_583061
-__inference_sequential_7_layer_call_fn_583647
-__inference_sequential_7_layer_call_fn_583666
-__inference_sequential_7_layer_call_fn_583559ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 z.trace_0z/trace_1z0trace_2z1trace_3
Φ
2trace_0
3trace_1
4trace_2
5trace_32λ
H__inference_sequential_7_layer_call_and_return_conditional_losses_584057
H__inference_sequential_7_layer_call_and_return_conditional_losses_584448
H__inference_sequential_7_layer_call_and_return_conditional_losses_583580
H__inference_sequential_7_layer_call_and_return_conditional_losses_583601ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 z2trace_0z3trace_1z4trace_2z5trace_3
ΜBΙ
!__inference__wrapped_model_581838input_8"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ρ
6iter

7beta_1

8beta_2
	9decay
:learning_ratemnmo$mp%mq&mr'ms(mtvuvv$vw%vx&vy'vz(v{"
	optimizer
,
;serving_default"
signature_map
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
Ή

<states
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
γ
Btrace_0
Ctrace_1
Dtrace_2
Etrace_32ψ
&__inference_gru_1_layer_call_fn_584459
&__inference_gru_1_layer_call_fn_584470
&__inference_gru_1_layer_call_fn_584481
&__inference_gru_1_layer_call_fn_584492Υ
Μ²Θ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 zBtrace_0zCtrace_1zDtrace_2zEtrace_3
Ο
Ftrace_0
Gtrace_1
Htrace_2
Itrace_32δ
A__inference_gru_1_layer_call_and_return_conditional_losses_584870
A__inference_gru_1_layer_call_and_return_conditional_losses_585248
A__inference_gru_1_layer_call_and_return_conditional_losses_585626
A__inference_gru_1_layer_call_and_return_conditional_losses_586004Υ
Μ²Θ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 zFtrace_0zGtrace_1zHtrace_2zItrace_3
"
_generic_user_object
θ
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
P_random_generator

&kernel
'recurrent_kernel
(bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ν
Vtrace_02Π
)__inference_dense_14_layer_call_fn_586013’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zVtrace_0

Wtrace_02λ
D__inference_dense_14_layer_call_and_return_conditional_losses_586024’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zWtrace_0
!:@2dense_14/kernel
:2dense_14/bias
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
­
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
ν
]trace_02Π
)__inference_dense_15_layer_call_fn_586033’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z]trace_0

^trace_02λ
D__inference_dense_15_layer_call_and_return_conditional_losses_586043’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z^trace_0
!:2dense_15/kernel
:2dense_15/bias
*:(	ΐ2gru_1/gru_cell_1/kernel
4:2	@ΐ2!gru_1/gru_cell_1/recurrent_kernel
(:&	ΐ2gru_1/gru_cell_1/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Bύ
-__inference_sequential_7_layer_call_fn_583061input_8"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
?Bό
-__inference_sequential_7_layer_call_fn_583647inputs"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
?Bό
-__inference_sequential_7_layer_call_fn_583666inputs"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Bύ
-__inference_sequential_7_layer_call_fn_583559input_8"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
H__inference_sequential_7_layer_call_and_return_conditional_losses_584057inputs"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
H__inference_sequential_7_layer_call_and_return_conditional_losses_584448inputs"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
H__inference_sequential_7_layer_call_and_return_conditional_losses_583580input_8"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
H__inference_sequential_7_layer_call_and_return_conditional_losses_583601input_8"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ΛBΘ
$__inference_signature_wrapper_583628input_8"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
&__inference_gru_1_layer_call_fn_584459inputs/0"Υ
Μ²Θ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
&__inference_gru_1_layer_call_fn_584470inputs/0"Υ
Μ²Θ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
&__inference_gru_1_layer_call_fn_584481inputs"Υ
Μ²Θ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
&__inference_gru_1_layer_call_fn_584492inputs"Υ
Μ²Θ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ͺB§
A__inference_gru_1_layer_call_and_return_conditional_losses_584870inputs/0"Υ
Μ²Θ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ͺB§
A__inference_gru_1_layer_call_and_return_conditional_losses_585248inputs/0"Υ
Μ²Θ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
¨B₯
A__inference_gru_1_layer_call_and_return_conditional_losses_585626inputs"Υ
Μ²Θ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
¨B₯
A__inference_gru_1_layer_call_and_return_conditional_losses_586004inputs"Υ
Μ²Θ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
Δ2ΑΎ
΅²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Δ2ΑΎ
΅²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
"
_generic_user_object
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
έBΪ
)__inference_dense_14_layer_call_fn_586013inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ψBυ
D__inference_dense_14_layer_call_and_return_conditional_losses_586024inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
έBΪ
)__inference_dense_15_layer_call_fn_586033inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ψBυ
D__inference_dense_15_layer_call_and_return_conditional_losses_586043inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
N
f	variables
g	keras_api
	htotal
	icount"
_tf_keras_metric
N
j	variables
k	keras_api
	ltotal
	mcount"
_tf_keras_metric
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
.
h0
i1"
trackable_list_wrapper
-
f	variables"
_generic_user_object
:  (2total
:  (2count
.
l0
m1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
:  (2total
:  (2count
&:$@2Adam/dense_14/kernel/m
 :2Adam/dense_14/bias/m
&:$2Adam/dense_15/kernel/m
 :2Adam/dense_15/bias/m
/:-	ΐ2Adam/gru_1/gru_cell_1/kernel/m
9:7	@ΐ2(Adam/gru_1/gru_cell_1/recurrent_kernel/m
-:+	ΐ2Adam/gru_1/gru_cell_1/bias/m
&:$@2Adam/dense_14/kernel/v
 :2Adam/dense_14/bias/v
&:$2Adam/dense_15/kernel/v
 :2Adam/dense_15/bias/v
/:-	ΐ2Adam/gru_1/gru_cell_1/kernel/v
9:7	@ΐ2(Adam/gru_1/gru_cell_1/recurrent_kernel/v
-:+	ΐ2Adam/gru_1/gru_cell_1/bias/v
!__inference__wrapped_model_581838t&'($%4’1
*’'
%"
input_8?????????
ͺ "3ͺ0
.
dense_15"
dense_15?????????€
D__inference_dense_14_layer_call_and_return_conditional_losses_586024\/’,
%’"
 
inputs?????????@
ͺ "%’"

0?????????
 |
)__inference_dense_14_layer_call_fn_586013O/’,
%’"
 
inputs?????????@
ͺ "?????????€
D__inference_dense_15_layer_call_and_return_conditional_losses_586043\$%/’,
%’"
 
inputs?????????
ͺ "%’"

0?????????
 |
)__inference_dense_15_layer_call_fn_586033O$%/’,
%’"
 
inputs?????????
ͺ "?????????Β
A__inference_gru_1_layer_call_and_return_conditional_losses_584870}&'(O’L
E’B
41
/,
inputs/0??????????????????

 
p 

 
ͺ "%’"

0?????????@
 Β
A__inference_gru_1_layer_call_and_return_conditional_losses_585248}&'(O’L
E’B
41
/,
inputs/0??????????????????

 
p

 
ͺ "%’"

0?????????@
 ²
A__inference_gru_1_layer_call_and_return_conditional_losses_585626m&'(?’<
5’2
$!
inputs?????????

 
p 

 
ͺ "%’"

0?????????@
 ²
A__inference_gru_1_layer_call_and_return_conditional_losses_586004m&'(?’<
5’2
$!
inputs?????????

 
p

 
ͺ "%’"

0?????????@
 
&__inference_gru_1_layer_call_fn_584459p&'(O’L
E’B
41
/,
inputs/0??????????????????

 
p 

 
ͺ "?????????@
&__inference_gru_1_layer_call_fn_584470p&'(O’L
E’B
41
/,
inputs/0??????????????????

 
p

 
ͺ "?????????@
&__inference_gru_1_layer_call_fn_584481`&'(?’<
5’2
$!
inputs?????????

 
p 

 
ͺ "?????????@
&__inference_gru_1_layer_call_fn_584492`&'(?’<
5’2
$!
inputs?????????

 
p

 
ͺ "?????????@Ί
H__inference_sequential_7_layer_call_and_return_conditional_losses_583580n&'($%<’9
2’/
%"
input_8?????????
p 

 
ͺ "%’"

0?????????
 Ί
H__inference_sequential_7_layer_call_and_return_conditional_losses_583601n&'($%<’9
2’/
%"
input_8?????????
p

 
ͺ "%’"

0?????????
 Ή
H__inference_sequential_7_layer_call_and_return_conditional_losses_584057m&'($%;’8
1’.
$!
inputs?????????
p 

 
ͺ "%’"

0?????????
 Ή
H__inference_sequential_7_layer_call_and_return_conditional_losses_584448m&'($%;’8
1’.
$!
inputs?????????
p

 
ͺ "%’"

0?????????
 
-__inference_sequential_7_layer_call_fn_583061a&'($%<’9
2’/
%"
input_8?????????
p 

 
ͺ "?????????
-__inference_sequential_7_layer_call_fn_583559a&'($%<’9
2’/
%"
input_8?????????
p

 
ͺ "?????????
-__inference_sequential_7_layer_call_fn_583647`&'($%;’8
1’.
$!
inputs?????????
p 

 
ͺ "?????????
-__inference_sequential_7_layer_call_fn_583666`&'($%;’8
1’.
$!
inputs?????????
p

 
ͺ "?????????§
$__inference_signature_wrapper_583628&'($%?’<
’ 
5ͺ2
0
input_8%"
input_8?????????"3ͺ0
.
dense_15"
dense_15?????????