??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
8
Const
output"dtype"
valuetensor"
dtypetype
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
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02unknown8??
}
my_model/dense/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namemy_model/dense/w
v
$my_model/dense/w/Read/ReadVariableOpReadVariableOpmy_model/dense/w*
_output_shapes
:	?@*
dtype0
x
my_model/dense/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namemy_model/dense/b
q
$my_model/dense/b/Read/ReadVariableOpReadVariableOpmy_model/dense/b*
_output_shapes
:@*
dtype0
?
my_model/dense_1/wVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*#
shared_namemy_model/dense_1/w
y
&my_model/dense_1/w/Read/ReadVariableOpReadVariableOpmy_model/dense_1/w*
_output_shapes

:@
*
dtype0
|
my_model/dense_1/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*#
shared_namemy_model/dense_1/b
u
&my_model/dense_1/b/Read/ReadVariableOpReadVariableOpmy_model/dense_1/b*
_output_shapes
:
*
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
?
Adam/my_model/dense/w/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/my_model/dense/w/m
?
+Adam/my_model/dense/w/m/Read/ReadVariableOpReadVariableOpAdam/my_model/dense/w/m*
_output_shapes
:	?@*
dtype0
?
Adam/my_model/dense/b/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/my_model/dense/b/m

+Adam/my_model/dense/b/m/Read/ReadVariableOpReadVariableOpAdam/my_model/dense/b/m*
_output_shapes
:@*
dtype0
?
Adam/my_model/dense_1/w/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
**
shared_nameAdam/my_model/dense_1/w/m
?
-Adam/my_model/dense_1/w/m/Read/ReadVariableOpReadVariableOpAdam/my_model/dense_1/w/m*
_output_shapes

:@
*
dtype0
?
Adam/my_model/dense_1/b/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
**
shared_nameAdam/my_model/dense_1/b/m
?
-Adam/my_model/dense_1/b/m/Read/ReadVariableOpReadVariableOpAdam/my_model/dense_1/b/m*
_output_shapes
:
*
dtype0
?
Adam/my_model/dense/w/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/my_model/dense/w/v
?
+Adam/my_model/dense/w/v/Read/ReadVariableOpReadVariableOpAdam/my_model/dense/w/v*
_output_shapes
:	?@*
dtype0
?
Adam/my_model/dense/b/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/my_model/dense/b/v

+Adam/my_model/dense/b/v/Read/ReadVariableOpReadVariableOpAdam/my_model/dense/b/v*
_output_shapes
:@*
dtype0
?
Adam/my_model/dense_1/w/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
**
shared_nameAdam/my_model/dense_1/w/v
?
-Adam/my_model/dense_1/w/v/Read/ReadVariableOpReadVariableOpAdam/my_model/dense_1/w/v*
_output_shapes

:@
*
dtype0
?
Adam/my_model/dense_1/b/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
**
shared_nameAdam/my_model/dense_1/b/v
?
-Adam/my_model/dense_1/b/v/Read/ReadVariableOpReadVariableOpAdam/my_model/dense_1/b/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?

dense1

dense2
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
`
	w

b
	variables
regularization_losses
trainable_variables
	keras_api
`
w
b
	variables
regularization_losses
trainable_variables
	keras_api
?
iter

beta_1

beta_2
	decay
learning_rate	m4
m5m6m7	v8
v9v:v;

	0

1
2
3
 

	0

1
2
3
?
non_trainable_variables
layer_metrics
metrics
layer_regularization_losses
	variables

layers
regularization_losses
trainable_variables
 
IG
VARIABLE_VALUEmy_model/dense/w#dense1/w/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEmy_model/dense/b#dense1/b/.ATTRIBUTES/VARIABLE_VALUE

	0

1
 

	0

1
?
non_trainable_variables
 layer_metrics
!metrics
"layer_regularization_losses
	variables

#layers
regularization_losses
trainable_variables
KI
VARIABLE_VALUEmy_model/dense_1/w#dense2/w/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEmy_model/dense_1/b#dense2/b/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
$non_trainable_variables
%layer_metrics
&metrics
'layer_regularization_losses
	variables

(layers
regularization_losses
trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 

)0
*1
 

0
1
 
 
 
 
 
 
 
 
 
 
4
	+total
	,count
-	variables
.	keras_api
D
	/total
	0count
1
_fn_kwargs
2	variables
3	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

+0
,1

-	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

/0
01

2	variables
lj
VARIABLE_VALUEAdam/my_model/dense/w/m?dense1/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/my_model/dense/b/m?dense1/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/my_model/dense_1/w/m?dense2/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/my_model/dense_1/b/m?dense2/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/my_model/dense/w/v?dense1/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/my_model/dense/b/v?dense1/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/my_model/dense_1/w/v?dense2/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/my_model/dense_1/b/v?dense2/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|
serving_default_input_1Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1my_model/dense/wmy_model/dense/bmy_model/dense_1/wmy_model/dense_1/b*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *+
f&R$
"__inference_signature_wrapper_4912
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$my_model/dense/w/Read/ReadVariableOp$my_model/dense/b/Read/ReadVariableOp&my_model/dense_1/w/Read/ReadVariableOp&my_model/dense_1/b/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/my_model/dense/w/m/Read/ReadVariableOp+Adam/my_model/dense/b/m/Read/ReadVariableOp-Adam/my_model/dense_1/w/m/Read/ReadVariableOp-Adam/my_model/dense_1/b/m/Read/ReadVariableOp+Adam/my_model/dense/w/v/Read/ReadVariableOp+Adam/my_model/dense/b/v/Read/ReadVariableOp-Adam/my_model/dense_1/w/v/Read/ReadVariableOp-Adam/my_model/dense_1/b/v/Read/ReadVariableOpConst*"
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *&
f!R
__inference__traced_save_5066
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemy_model/dense/wmy_model/dense/bmy_model/dense_1/wmy_model/dense_1/b	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/my_model/dense/w/mAdam/my_model/dense/b/mAdam/my_model/dense_1/w/mAdam/my_model/dense_1/b/mAdam/my_model/dense/w/vAdam/my_model/dense/b/vAdam/my_model/dense_1/w/vAdam/my_model/dense_1/b/v*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *)
f$R"
 __inference__traced_restore_5139??
?	
?
?__inference_dense_layer_call_and_return_conditional_losses_4961

inputs1
matmul_readvariableop_resource:	?@)
add_readvariableop_resource:@
identity??MatMul/ReadVariableOp?add/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOps
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
addb
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity{
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?2
?
__inference__traced_save_5066
file_prefix/
+savev2_my_model_dense_w_read_readvariableop/
+savev2_my_model_dense_b_read_readvariableop1
-savev2_my_model_dense_1_w_read_readvariableop1
-savev2_my_model_dense_1_b_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_my_model_dense_w_m_read_readvariableop6
2savev2_adam_my_model_dense_b_m_read_readvariableop8
4savev2_adam_my_model_dense_1_w_m_read_readvariableop8
4savev2_adam_my_model_dense_1_b_m_read_readvariableop6
2savev2_adam_my_model_dense_w_v_read_readvariableop6
2savev2_adam_my_model_dense_b_v_read_readvariableop8
4savev2_adam_my_model_dense_1_w_v_read_readvariableop8
4savev2_adam_my_model_dense_1_b_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?B#dense1/w/.ATTRIBUTES/VARIABLE_VALUEB#dense1/b/.ATTRIBUTES/VARIABLE_VALUEB#dense2/w/.ATTRIBUTES/VARIABLE_VALUEB#dense2/b/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB?dense1/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?dense1/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?dense2/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?dense2/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?dense1/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?dense1/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?dense2/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?dense2/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_my_model_dense_w_read_readvariableop+savev2_my_model_dense_b_read_readvariableop-savev2_my_model_dense_1_w_read_readvariableop-savev2_my_model_dense_1_b_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_my_model_dense_w_m_read_readvariableop2savev2_adam_my_model_dense_b_m_read_readvariableop4savev2_adam_my_model_dense_1_w_m_read_readvariableop4savev2_adam_my_model_dense_1_b_m_read_readvariableop2savev2_adam_my_model_dense_w_v_read_readvariableop2savev2_adam_my_model_dense_b_v_read_readvariableop4savev2_adam_my_model_dense_1_w_v_read_readvariableop4savev2_adam_my_model_dense_1_b_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes{
y: :	?@:@:@
:
: : : : : : : : : :	?@:@:@
:
:	?@:@:@
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@
: 

_output_shapes
:
:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@
: 

_output_shapes
:
:

_output_shapes
: 
?Z
?
 __inference__traced_restore_5139
file_prefix4
!assignvariableop_my_model_dense_w:	?@1
#assignvariableop_1_my_model_dense_b:@7
%assignvariableop_2_my_model_dense_1_w:@
3
%assignvariableop_3_my_model_dense_1_b:
&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: >
+assignvariableop_13_adam_my_model_dense_w_m:	?@9
+assignvariableop_14_adam_my_model_dense_b_m:@?
-assignvariableop_15_adam_my_model_dense_1_w_m:@
;
-assignvariableop_16_adam_my_model_dense_1_b_m:
>
+assignvariableop_17_adam_my_model_dense_w_v:	?@9
+assignvariableop_18_adam_my_model_dense_b_v:@?
-assignvariableop_19_adam_my_model_dense_1_w_v:@
;
-assignvariableop_20_adam_my_model_dense_1_b_v:

identity_22??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?B#dense1/w/.ATTRIBUTES/VARIABLE_VALUEB#dense1/b/.ATTRIBUTES/VARIABLE_VALUEB#dense2/w/.ATTRIBUTES/VARIABLE_VALUEB#dense2/b/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB?dense1/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?dense1/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?dense2/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?dense2/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?dense1/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?dense1/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?dense2/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?dense2/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_my_model_dense_wIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp#assignvariableop_1_my_model_dense_bIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp%assignvariableop_2_my_model_dense_1_wIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp%assignvariableop_3_my_model_dense_1_bIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp+assignvariableop_13_adam_my_model_dense_w_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_my_model_dense_b_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp-assignvariableop_15_adam_my_model_dense_1_w_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp-assignvariableop_16_adam_my_model_dense_1_b_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_my_model_dense_w_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_my_model_dense_b_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp-assignvariableop_19_adam_my_model_dense_1_w_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp-assignvariableop_20_adam_my_model_dense_1_b_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_209
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_21f
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_22?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202(
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
?
?
"__inference_signature_wrapper_4912
input_1
unknown:	?@
	unknown_0:@
	unknown_1:@

	unknown_2:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *(
f#R!
__inference__wrapped_model_47912
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1
?
?
__inference__wrapped_model_4791
input_1@
-my_model_dense_matmul_readvariableop_resource:	?@8
*my_model_dense_add_readvariableop_resource:@A
/my_model_dense_1_matmul_readvariableop_resource:@
:
,my_model_dense_1_add_readvariableop_resource:

identity??$my_model/dense/MatMul/ReadVariableOp?!my_model/dense/add/ReadVariableOp?&my_model/dense_1/MatMul/ReadVariableOp?#my_model/dense_1/add/ReadVariableOp?
$my_model/dense/MatMul/ReadVariableOpReadVariableOp-my_model_dense_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02&
$my_model/dense/MatMul/ReadVariableOp?
my_model/dense/MatMulMatMulinput_1,my_model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
my_model/dense/MatMul?
!my_model/dense/add/ReadVariableOpReadVariableOp*my_model_dense_add_readvariableop_resource*
_output_shapes
:@*
dtype02#
!my_model/dense/add/ReadVariableOp?
my_model/dense/addAddV2my_model/dense/MatMul:product:0)my_model/dense/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
my_model/dense/addp
my_model/ReluRelumy_model/dense/add:z:0*
T0*'
_output_shapes
:?????????@2
my_model/Relu?
&my_model/dense_1/MatMul/ReadVariableOpReadVariableOp/my_model_dense_1_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02(
&my_model/dense_1/MatMul/ReadVariableOp?
my_model/dense_1/MatMulMatMulmy_model/Relu:activations:0.my_model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
my_model/dense_1/MatMul?
#my_model/dense_1/add/ReadVariableOpReadVariableOp,my_model_dense_1_add_readvariableop_resource*
_output_shapes
:
*
dtype02%
#my_model/dense_1/add/ReadVariableOp?
my_model/dense_1/addAddV2!my_model/dense_1/MatMul:product:0+my_model/dense_1/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
my_model/dense_1/adds
IdentityIdentitymy_model/dense_1/add:z:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp%^my_model/dense/MatMul/ReadVariableOp"^my_model/dense/add/ReadVariableOp'^my_model/dense_1/MatMul/ReadVariableOp$^my_model/dense_1/add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2L
$my_model/dense/MatMul/ReadVariableOp$my_model/dense/MatMul/ReadVariableOp2F
!my_model/dense/add/ReadVariableOp!my_model/dense/add/ReadVariableOp2P
&my_model/dense_1/MatMul/ReadVariableOp&my_model/dense_1/MatMul/ReadVariableOp2J
#my_model/dense_1/add/ReadVariableOp#my_model/dense_1/add/ReadVariableOp:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1
?
?
'__inference_my_model_layer_call_fn_4925
input_tensor
unknown:	?@
	unknown_0:@
	unknown_1:@

	unknown_2:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_tensorunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_my_model_layer_call_and_return_conditional_losses_48322
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
(
_output_shapes
:??????????
&
_user_specified_nameinput_tensor
?	
?
A__inference_dense_1_layer_call_and_return_conditional_losses_4825

inputs0
matmul_readvariableop_resource:@
)
add_readvariableop_resource:

identity??MatMul/ReadVariableOp?add/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:
*
dtype02
add/ReadVariableOps
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
addb
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity{
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
$__inference_dense_layer_call_fn_4951

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_48082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
?__inference_dense_layer_call_and_return_conditional_losses_4808

inputs1
matmul_readvariableop_resource:	?@)
add_readvariableop_resource:@
identity??MatMul/ReadVariableOp?add/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOps
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
addb
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity{
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
B__inference_my_model_layer_call_and_return_conditional_losses_4891
input_1

dense_4879:	?@

dense_4881:@
dense_1_4885:@

dense_1_4887:

identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1
dense_4879
dense_4881*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_48082
dense/StatefulPartitionedCalln
ReluRelu&dense/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
dense_1/StatefulPartitionedCallStatefulPartitionedCallRelu:activations:0dense_1_4885dense_1_4887*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_48252!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1
?
?
'__inference_my_model_layer_call_fn_4843
input_1
unknown:	?@
	unknown_0:@
	unknown_1:@

	unknown_2:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_my_model_layer_call_and_return_conditional_losses_48322
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1
?	
?
A__inference_dense_1_layer_call_and_return_conditional_losses_4980

inputs0
matmul_readvariableop_resource:@
)
add_readvariableop_resource:

identity??MatMul/ReadVariableOp?add/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:
*
dtype02
add/ReadVariableOps
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
addb
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity{
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
&__inference_dense_1_layer_call_fn_4970

inputs
unknown:@

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_48252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
B__inference_my_model_layer_call_and_return_conditional_losses_4942
input_tensor7
$dense_matmul_readvariableop_resource:	?@/
!dense_add_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@
1
#dense_1_add_readvariableop_resource:

identity??dense/MatMul/ReadVariableOp?dense/add/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_1/add/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulinput_tensor#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense/MatMul?
dense/add/ReadVariableOpReadVariableOp!dense_add_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/add/ReadVariableOp?
	dense/addAddV2dense/MatMul:product:0 dense/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
	dense/addU
ReluReludense/add:z:0*
T0*'
_output_shapes
:?????????@2
Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulRelu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/MatMul?
dense_1/add/ReadVariableOpReadVariableOp#dense_1_add_readvariableop_resource*
_output_shapes
:
*
dtype02
dense_1/add/ReadVariableOp?
dense_1/addAddV2dense_1/MatMul:product:0"dense_1/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/addj
IdentityIdentitydense_1/add:z:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^dense/MatMul/ReadVariableOp^dense/add/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_1/add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp24
dense/add/ReadVariableOpdense/add/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
dense_1/add/ReadVariableOpdense_1/add/ReadVariableOp:V R
(
_output_shapes
:??????????
&
_user_specified_nameinput_tensor
?
?
B__inference_my_model_layer_call_and_return_conditional_losses_4832
input_tensor

dense_4809:	?@

dense_4811:@
dense_1_4826:@

dense_1_4828:

identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCallinput_tensor
dense_4809
dense_4811*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_48082
dense/StatefulPartitionedCalln
ReluRelu&dense/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
dense_1/StatefulPartitionedCallStatefulPartitionedCallRelu:activations:0dense_1_4826dense_1_4828*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_48252!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:V R
(
_output_shapes
:??????????
&
_user_specified_nameinput_tensor"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
<
input_11
serving_default_input_1:0??????????<
output_10
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:?7
?

dense1

dense2
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
<__call__
*=&call_and_return_all_conditional_losses
>_default_save_signature"
_tf_keras_model
?
	w

b
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
?
w
b
	variables
regularization_losses
trainable_variables
	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
?
iter

beta_1

beta_2
	decay
learning_rate	m4
m5m6m7	v8
v9v:v;"
	optimizer
<
	0

1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
<
	0

1
2
3"
trackable_list_wrapper
?
non_trainable_variables
layer_metrics
metrics
layer_regularization_losses
	variables

layers
regularization_losses
trainable_variables
<__call__
>_default_save_signature
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
,
Cserving_default"
signature_map
#:!	?@2my_model/dense/w
:@2my_model/dense/b
.
	0

1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
?
non_trainable_variables
 layer_metrics
!metrics
"layer_regularization_losses
	variables

#layers
regularization_losses
trainable_variables
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
$:"@
2my_model/dense_1/w
 :
2my_model/dense_1/b
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
$non_trainable_variables
%layer_metrics
&metrics
'layer_regularization_losses
	variables

(layers
regularization_losses
trainable_variables
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	+total
	,count
-	variables
.	keras_api"
_tf_keras_metric
^
	/total
	0count
1
_fn_kwargs
2	variables
3	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
+0
,1"
trackable_list_wrapper
-
-	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
/0
01"
trackable_list_wrapper
-
2	variables"
_generic_user_object
(:&	?@2Adam/my_model/dense/w/m
#:!@2Adam/my_model/dense/b/m
):'@
2Adam/my_model/dense_1/w/m
%:#
2Adam/my_model/dense_1/b/m
(:&	?@2Adam/my_model/dense/w/v
#:!@2Adam/my_model/dense/b/v
):'@
2Adam/my_model/dense_1/w/v
%:#
2Adam/my_model/dense_1/b/v
?2?
'__inference_my_model_layer_call_fn_4843
'__inference_my_model_layer_call_fn_4925?
???
FullArgSpec#
args?
jself
jinput_tensor
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_my_model_layer_call_and_return_conditional_losses_4942
B__inference_my_model_layer_call_and_return_conditional_losses_4891?
???
FullArgSpec#
args?
jself
jinput_tensor
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference__wrapped_model_4791input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_dense_layer_call_fn_4951?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_dense_layer_call_and_return_conditional_losses_4961?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_1_layer_call_fn_4970?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_1_layer_call_and_return_conditional_losses_4980?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
"__inference_signature_wrapper_4912input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
__inference__wrapped_model_4791n	
1?.
'?$
"?
input_1??????????
? "3?0
.
output_1"?
output_1?????????
?
A__inference_dense_1_layer_call_and_return_conditional_losses_4980\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????

? y
&__inference_dense_1_layer_call_fn_4970O/?,
%?"
 ?
inputs?????????@
? "??????????
?
?__inference_dense_layer_call_and_return_conditional_losses_4961]	
0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? x
$__inference_dense_layer_call_fn_4951P	
0?-
&?#
!?
inputs??????????
? "??????????@?
B__inference_my_model_layer_call_and_return_conditional_losses_4891`	
1?.
'?$
"?
input_1??????????
? "%?"
?
0?????????

? ?
B__inference_my_model_layer_call_and_return_conditional_losses_4942e	
6?3
,?)
'?$
input_tensor??????????
? "%?"
?
0?????????

? ~
'__inference_my_model_layer_call_fn_4843S	
1?.
'?$
"?
input_1??????????
? "??????????
?
'__inference_my_model_layer_call_fn_4925X	
6?3
,?)
'?$
input_tensor??????????
? "??????????
?
"__inference_signature_wrapper_4912y	
<?9
? 
2?/
-
input_1"?
input_1??????????"3?0
.
output_1"?
output_1?????????
