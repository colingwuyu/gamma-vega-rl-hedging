��
��

^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
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
dtypetype�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.8.02v2.8.0-0-g3f878cff5b68��
�
feedforward_mlp_torso/linear/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name feedforward_mlp_torso/linear/b
�
2feedforward_mlp_torso/linear/b/Read/ReadVariableOpReadVariableOpfeedforward_mlp_torso/linear/b*
_output_shapes	
:�*
dtype0
�
feedforward_mlp_torso/linear/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*/
shared_name feedforward_mlp_torso/linear/w
�
2feedforward_mlp_torso/linear/w/Read/ReadVariableOpReadVariableOpfeedforward_mlp_torso/linear/w*
_output_shapes
:	�*
dtype0
�
'feedforward_mlp_torso/layer_norm/offsetVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*8
shared_name)'feedforward_mlp_torso/layer_norm/offset
�
;feedforward_mlp_torso/layer_norm/offset/Read/ReadVariableOpReadVariableOp'feedforward_mlp_torso/layer_norm/offset*
_output_shapes	
:�*
dtype0
�
&feedforward_mlp_torso/layer_norm/scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&feedforward_mlp_torso/layer_norm/scale
�
:feedforward_mlp_torso/layer_norm/scale/Read/ReadVariableOpReadVariableOp&feedforward_mlp_torso/layer_norm/scale*
_output_shapes	
:�*
dtype0
�
$feedforward_mlp_torso/mlp/linear_0/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*5
shared_name&$feedforward_mlp_torso/mlp/linear_0/b
�
8feedforward_mlp_torso/mlp/linear_0/b/Read/ReadVariableOpReadVariableOp$feedforward_mlp_torso/mlp/linear_0/b*
_output_shapes	
:�*
dtype0
�
$feedforward_mlp_torso/mlp/linear_0/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$feedforward_mlp_torso/mlp/linear_0/w
�
8feedforward_mlp_torso/mlp/linear_0/w/Read/ReadVariableOpReadVariableOp$feedforward_mlp_torso/mlp/linear_0/w* 
_output_shapes
:
��*
dtype0
�
$feedforward_mlp_torso/mlp/linear_1/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*5
shared_name&$feedforward_mlp_torso/mlp/linear_1/b
�
8feedforward_mlp_torso/mlp/linear_1/b/Read/ReadVariableOpReadVariableOp$feedforward_mlp_torso/mlp/linear_1/b*
_output_shapes	
:�*
dtype0
�
$feedforward_mlp_torso/mlp/linear_1/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$feedforward_mlp_torso/mlp/linear_1/w
�
8feedforward_mlp_torso/mlp/linear_1/w/Read/ReadVariableOpReadVariableOp$feedforward_mlp_torso/mlp/linear_1/w* 
_output_shapes
:
��*
dtype0
�
near_zero_initialized_linear/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name near_zero_initialized_linear/b
�
2near_zero_initialized_linear/b/Read/ReadVariableOpReadVariableOpnear_zero_initialized_linear/b*
_output_shapes
:*
dtype0
�
near_zero_initialized_linear/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*/
shared_name near_zero_initialized_linear/w
�
2near_zero_initialized_linear/w/Read/ReadVariableOpReadVariableOpnear_zero_initialized_linear/w*
_output_shapes
:	�*
dtype0

NoOpNoOp
�

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�

value�	B�	 B�	
Y

_variables
_trainable_variables
__call__
_module

signatures*
J
0
1
2
	3

4
5
6
7
8
9*
J
0
1
2
	3

4
5
6
7
8
9*
* 
* 
* 
_Y
VARIABLE_VALUEfeedforward_mlp_torso/linear/b'_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEfeedforward_mlp_torso/linear/w'_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE'feedforward_mlp_torso/layer_norm/offset'_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&feedforward_mlp_torso/layer_norm/scale'_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$feedforward_mlp_torso/mlp/linear_0/b'_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$feedforward_mlp_torso/mlp/linear_0/w'_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$feedforward_mlp_torso/mlp/linear_1/b'_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$feedforward_mlp_torso/mlp/linear_1/w'_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEnear_zero_initialized_linear/b'_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEnear_zero_initialized_linear/w'_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCallStatefulPartitionedCallsaver_filename2feedforward_mlp_torso/linear/b/Read/ReadVariableOp2feedforward_mlp_torso/linear/w/Read/ReadVariableOp;feedforward_mlp_torso/layer_norm/offset/Read/ReadVariableOp:feedforward_mlp_torso/layer_norm/scale/Read/ReadVariableOp8feedforward_mlp_torso/mlp/linear_0/b/Read/ReadVariableOp8feedforward_mlp_torso/mlp/linear_0/w/Read/ReadVariableOp8feedforward_mlp_torso/mlp/linear_1/b/Read/ReadVariableOp8feedforward_mlp_torso/mlp/linear_1/w/Read/ReadVariableOp2near_zero_initialized_linear/b/Read/ReadVariableOp2near_zero_initialized_linear/w/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *'
f"R 
__inference__traced_save_15330
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamefeedforward_mlp_torso/linear/bfeedforward_mlp_torso/linear/w'feedforward_mlp_torso/layer_norm/offset&feedforward_mlp_torso/layer_norm/scale$feedforward_mlp_torso/mlp/linear_0/b$feedforward_mlp_torso/mlp/linear_0/w$feedforward_mlp_torso/mlp/linear_1/b$feedforward_mlp_torso/mlp/linear_1/wnear_zero_initialized_linear/bnear_zero_initialized_linear/w*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__traced_restore_15370��
�-
�
!__inference__traced_restore_15370
file_prefix>
/assignvariableop_feedforward_mlp_torso_linear_b:	�D
1assignvariableop_1_feedforward_mlp_torso_linear_w:	�I
:assignvariableop_2_feedforward_mlp_torso_layer_norm_offset:	�H
9assignvariableop_3_feedforward_mlp_torso_layer_norm_scale:	�F
7assignvariableop_4_feedforward_mlp_torso_mlp_linear_0_b:	�K
7assignvariableop_5_feedforward_mlp_torso_mlp_linear_0_w:
��F
7assignvariableop_6_feedforward_mlp_torso_mlp_linear_1_b:	�K
7assignvariableop_7_feedforward_mlp_torso_mlp_linear_1_w:
��?
1assignvariableop_8_near_zero_initialized_linear_b:D
1assignvariableop_9_near_zero_initialized_linear_w:	�
identity_11��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B'_variables/0/.ATTRIBUTES/VARIABLE_VALUEB'_variables/1/.ATTRIBUTES/VARIABLE_VALUEB'_variables/2/.ATTRIBUTES/VARIABLE_VALUEB'_variables/3/.ATTRIBUTES/VARIABLE_VALUEB'_variables/4/.ATTRIBUTES/VARIABLE_VALUEB'_variables/5/.ATTRIBUTES/VARIABLE_VALUEB'_variables/6/.ATTRIBUTES/VARIABLE_VALUEB'_variables/7/.ATTRIBUTES/VARIABLE_VALUEB'_variables/8/.ATTRIBUTES/VARIABLE_VALUEB'_variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp/assignvariableop_feedforward_mlp_torso_linear_bIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp1assignvariableop_1_feedforward_mlp_torso_linear_wIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp:assignvariableop_2_feedforward_mlp_torso_layer_norm_offsetIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp9assignvariableop_3_feedforward_mlp_torso_layer_norm_scaleIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp7assignvariableop_4_feedforward_mlp_torso_mlp_linear_0_bIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp7assignvariableop_5_feedforward_mlp_torso_mlp_linear_0_wIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp7assignvariableop_6_feedforward_mlp_torso_mlp_linear_1_bIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp7assignvariableop_7_feedforward_mlp_torso_mlp_linear_1_wIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp1assignvariableop_8_near_zero_initialized_linear_bIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp1assignvariableop_9_near_zero_initialized_linear_wIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_11IdentityIdentity_10:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_11Identity_11:output:0*)
_input_shapes
: : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
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
�e
�
 __inference_wrapped_module_15187

args_0N
;feedforward_mlp_torso_linear_matmul_readvariableop_resource:	�G
8feedforward_mlp_torso_linear_add_readvariableop_resource:	�U
Ffeedforward_mlp_torso_layer_norm_batchnorm_mul_readvariableop_resource:	�Q
Bfeedforward_mlp_torso_layer_norm_batchnorm_readvariableop_resource:	�U
Afeedforward_mlp_torso_mlp_linear_0_matmul_readvariableop_resource:
��M
>feedforward_mlp_torso_mlp_linear_0_add_readvariableop_resource:	�U
Afeedforward_mlp_torso_mlp_linear_1_matmul_readvariableop_resource:
��M
>feedforward_mlp_torso_mlp_linear_1_add_readvariableop_resource:	�N
;near_zero_initialized_linear_matmul_readvariableop_resource:	�F
8near_zero_initialized_linear_add_readvariableop_resource:
identity��9feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp�=feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp�/feedforward_mlp_torso/linear/Add/ReadVariableOp�2feedforward_mlp_torso/linear/MatMul/ReadVariableOp�5feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp�8feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp�5feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp�8feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp�/near_zero_initialized_linear/Add/ReadVariableOp�2near_zero_initialized_linear/MatMul/ReadVariableOpY
#feedforward_mlp_torso/flatten/ShapeShapeargs_0*
T0*
_output_shapes
:{
1feedforward_mlp_torso/flatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3feedforward_mlp_torso/flatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3feedforward_mlp_torso/flatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+feedforward_mlp_torso/flatten/strided_sliceStridedSlice,feedforward_mlp_torso/flatten/Shape:output:0:feedforward_mlp_torso/flatten/strided_slice/stack:output:0<feedforward_mlp_torso/flatten/strided_slice/stack_1:output:0<feedforward_mlp_torso/flatten/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskw
-feedforward_mlp_torso/flatten/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:k
)feedforward_mlp_torso/flatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$feedforward_mlp_torso/flatten/concatConcatV24feedforward_mlp_torso/flatten/strided_slice:output:06feedforward_mlp_torso/flatten/concat/values_1:output:02feedforward_mlp_torso/flatten/concat/axis:output:0*
N*
T0*
_output_shapes
:�
%feedforward_mlp_torso/flatten/ReshapeReshapeargs_0-feedforward_mlp_torso/flatten/concat:output:0*
T0*'
_output_shapes
:���������r
'feedforward_mlp_torso/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
#feedforward_mlp_torso/concat/concatIdentity.feedforward_mlp_torso/flatten/Reshape:output:0*
T0*'
_output_shapes
:����������
2feedforward_mlp_torso/linear/MatMul/ReadVariableOpReadVariableOp;feedforward_mlp_torso_linear_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
#feedforward_mlp_torso/linear/MatMulMatMul,feedforward_mlp_torso/concat/concat:output:0:feedforward_mlp_torso/linear/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/feedforward_mlp_torso/linear/Add/ReadVariableOpReadVariableOp8feedforward_mlp_torso_linear_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 feedforward_mlp_torso/linear/AddAddV2-feedforward_mlp_torso/linear/MatMul:product:07feedforward_mlp_torso/linear/Add/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
?feedforward_mlp_torso/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
-feedforward_mlp_torso/layer_norm/moments/meanMean$feedforward_mlp_torso/linear/Add:z:0Hfeedforward_mlp_torso/layer_norm/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
5feedforward_mlp_torso/layer_norm/moments/StopGradientStopGradient6feedforward_mlp_torso/layer_norm/moments/mean:output:0*
T0*'
_output_shapes
:����������
:feedforward_mlp_torso/layer_norm/moments/SquaredDifferenceSquaredDifference$feedforward_mlp_torso/linear/Add:z:0>feedforward_mlp_torso/layer_norm/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
Cfeedforward_mlp_torso/layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
1feedforward_mlp_torso/layer_norm/moments/varianceMean>feedforward_mlp_torso/layer_norm/moments/SquaredDifference:z:0Lfeedforward_mlp_torso/layer_norm/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(u
0feedforward_mlp_torso/layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
.feedforward_mlp_torso/layer_norm/batchnorm/addAddV2:feedforward_mlp_torso/layer_norm/moments/variance:output:09feedforward_mlp_torso/layer_norm/batchnorm/add/y:output:0*
T0*'
_output_shapes
:����������
0feedforward_mlp_torso/layer_norm/batchnorm/RsqrtRsqrt2feedforward_mlp_torso/layer_norm/batchnorm/add:z:0*
T0*'
_output_shapes
:����������
=feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpFfeedforward_mlp_torso_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.feedforward_mlp_torso/layer_norm/batchnorm/mulMul4feedforward_mlp_torso/layer_norm/batchnorm/Rsqrt:y:0Efeedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0feedforward_mlp_torso/layer_norm/batchnorm/mul_1Mul$feedforward_mlp_torso/linear/Add:z:02feedforward_mlp_torso/layer_norm/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
0feedforward_mlp_torso/layer_norm/batchnorm/mul_2Mul6feedforward_mlp_torso/layer_norm/moments/mean:output:02feedforward_mlp_torso/layer_norm/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
9feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOpReadVariableOpBfeedforward_mlp_torso_layer_norm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.feedforward_mlp_torso/layer_norm/batchnorm/subSubAfeedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp:value:04feedforward_mlp_torso/layer_norm/batchnorm/mul_2:z:0*
T0*(
_output_shapes
:�����������
0feedforward_mlp_torso/layer_norm/batchnorm/add_1AddV24feedforward_mlp_torso/layer_norm/batchnorm/mul_1:z:02feedforward_mlp_torso/layer_norm/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
%feedforward_mlp_torso/sequential/TanhTanh4feedforward_mlp_torso/layer_norm/batchnorm/add_1:z:0*
T0*(
_output_shapes
:�����������
8feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOpReadVariableOpAfeedforward_mlp_torso_mlp_linear_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)feedforward_mlp_torso/mlp/linear_0/MatMulMatMul)feedforward_mlp_torso/sequential/Tanh:y:0@feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
5feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOpReadVariableOp>feedforward_mlp_torso_mlp_linear_0_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&feedforward_mlp_torso/mlp/linear_0/AddAddV23feedforward_mlp_torso/mlp/linear_0/MatMul:product:0=feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
feedforward_mlp_torso/mlp/EluElu*feedforward_mlp_torso/mlp/linear_0/Add:z:0*
T0*(
_output_shapes
:�����������
8feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOpReadVariableOpAfeedforward_mlp_torso_mlp_linear_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)feedforward_mlp_torso/mlp/linear_1/MatMulMatMul+feedforward_mlp_torso/mlp/Elu:activations:0@feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
5feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOpReadVariableOp>feedforward_mlp_torso_mlp_linear_1_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&feedforward_mlp_torso/mlp/linear_1/AddAddV23feedforward_mlp_torso/mlp/linear_1/MatMul:product:0=feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
feedforward_mlp_torso/mlp/Elu_1Elu*feedforward_mlp_torso/mlp/linear_1/Add:z:0*
T0*(
_output_shapes
:�����������
2near_zero_initialized_linear/MatMul/ReadVariableOpReadVariableOp;near_zero_initialized_linear_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
#near_zero_initialized_linear/MatMulMatMul-feedforward_mlp_torso/mlp/Elu_1:activations:0:near_zero_initialized_linear/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/near_zero_initialized_linear/Add/ReadVariableOpReadVariableOp8near_zero_initialized_linear_add_readvariableop_resource*
_output_shapes
:*
dtype0�
 near_zero_initialized_linear/AddAddV2-near_zero_initialized_linear/MatMul:product:07near_zero_initialized_linear/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������q
tanh_to_spec/TanhTanh$near_zero_initialized_linear/Add:z:0*
T0*'
_output_shapes
:���������W
tanh_to_spec/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
tanh_to_spec/addAddV2tanh_to_spec/Tanh:y:0tanh_to_spec/add/y:output:0*
T0*'
_output_shapes
:���������W
tanh_to_spec/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?|
tanh_to_spec/mulMultanh_to_spec/mul/x:output:0tanh_to_spec/add:z:0*
T0*'
_output_shapes
:���������a
tanh_to_spec/mul_1/yConst*
_output_shapes
:*
dtype0*
valueB*   @�
tanh_to_spec/mul_1Multanh_to_spec/mul:z:0tanh_to_spec/mul_1/y:output:0*
T0*'
_output_shapes
:���������a
tanh_to_spec/add_1/yConst*
_output_shapes
:*
dtype0*
valueB*  ���
tanh_to_spec/add_1AddV2tanh_to_spec/mul_1:z:0tanh_to_spec/add_1/y:output:0*
T0*'
_output_shapes
:���������e
IdentityIdentitytanh_to_spec/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp:^feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp>^feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp0^feedforward_mlp_torso/linear/Add/ReadVariableOp3^feedforward_mlp_torso/linear/MatMul/ReadVariableOp6^feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp9^feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp6^feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp9^feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp0^near_zero_initialized_linear/Add/ReadVariableOp3^near_zero_initialized_linear/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2v
9feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp9feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp2~
=feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp=feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp2b
/feedforward_mlp_torso/linear/Add/ReadVariableOp/feedforward_mlp_torso/linear/Add/ReadVariableOp2h
2feedforward_mlp_torso/linear/MatMul/ReadVariableOp2feedforward_mlp_torso/linear/MatMul/ReadVariableOp2n
5feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp5feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp2t
8feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp8feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp2n
5feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp5feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp2t
8feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp8feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp2b
/near_zero_initialized_linear/Add/ReadVariableOp/near_zero_initialized_linear/Add/ReadVariableOp2h
2near_zero_initialized_linear/MatMul/ReadVariableOp2near_zero_initialized_linear/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameargs_0
�	
�
__inference___call___15210

args_0
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference_wrapped_module_15187o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameargs_0
�e
�
 __inference_wrapped_module_15279

args_0N
;feedforward_mlp_torso_linear_matmul_readvariableop_resource:	�G
8feedforward_mlp_torso_linear_add_readvariableop_resource:	�U
Ffeedforward_mlp_torso_layer_norm_batchnorm_mul_readvariableop_resource:	�Q
Bfeedforward_mlp_torso_layer_norm_batchnorm_readvariableop_resource:	�U
Afeedforward_mlp_torso_mlp_linear_0_matmul_readvariableop_resource:
��M
>feedforward_mlp_torso_mlp_linear_0_add_readvariableop_resource:	�U
Afeedforward_mlp_torso_mlp_linear_1_matmul_readvariableop_resource:
��M
>feedforward_mlp_torso_mlp_linear_1_add_readvariableop_resource:	�N
;near_zero_initialized_linear_matmul_readvariableop_resource:	�F
8near_zero_initialized_linear_add_readvariableop_resource:
identity��9feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp�=feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp�/feedforward_mlp_torso/linear/Add/ReadVariableOp�2feedforward_mlp_torso/linear/MatMul/ReadVariableOp�5feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp�8feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp�5feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp�8feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp�/near_zero_initialized_linear/Add/ReadVariableOp�2near_zero_initialized_linear/MatMul/ReadVariableOpY
#feedforward_mlp_torso/flatten/ShapeShapeargs_0*
T0*
_output_shapes
:{
1feedforward_mlp_torso/flatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3feedforward_mlp_torso/flatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3feedforward_mlp_torso/flatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+feedforward_mlp_torso/flatten/strided_sliceStridedSlice,feedforward_mlp_torso/flatten/Shape:output:0:feedforward_mlp_torso/flatten/strided_slice/stack:output:0<feedforward_mlp_torso/flatten/strided_slice/stack_1:output:0<feedforward_mlp_torso/flatten/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskw
-feedforward_mlp_torso/flatten/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:k
)feedforward_mlp_torso/flatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$feedforward_mlp_torso/flatten/concatConcatV24feedforward_mlp_torso/flatten/strided_slice:output:06feedforward_mlp_torso/flatten/concat/values_1:output:02feedforward_mlp_torso/flatten/concat/axis:output:0*
N*
T0*
_output_shapes
:�
%feedforward_mlp_torso/flatten/ReshapeReshapeargs_0-feedforward_mlp_torso/flatten/concat:output:0*
T0*'
_output_shapes
:���������r
'feedforward_mlp_torso/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
#feedforward_mlp_torso/concat/concatIdentity.feedforward_mlp_torso/flatten/Reshape:output:0*
T0*'
_output_shapes
:����������
2feedforward_mlp_torso/linear/MatMul/ReadVariableOpReadVariableOp;feedforward_mlp_torso_linear_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
#feedforward_mlp_torso/linear/MatMulMatMul,feedforward_mlp_torso/concat/concat:output:0:feedforward_mlp_torso/linear/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/feedforward_mlp_torso/linear/Add/ReadVariableOpReadVariableOp8feedforward_mlp_torso_linear_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 feedforward_mlp_torso/linear/AddAddV2-feedforward_mlp_torso/linear/MatMul:product:07feedforward_mlp_torso/linear/Add/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
?feedforward_mlp_torso/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
-feedforward_mlp_torso/layer_norm/moments/meanMean$feedforward_mlp_torso/linear/Add:z:0Hfeedforward_mlp_torso/layer_norm/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
5feedforward_mlp_torso/layer_norm/moments/StopGradientStopGradient6feedforward_mlp_torso/layer_norm/moments/mean:output:0*
T0*'
_output_shapes
:����������
:feedforward_mlp_torso/layer_norm/moments/SquaredDifferenceSquaredDifference$feedforward_mlp_torso/linear/Add:z:0>feedforward_mlp_torso/layer_norm/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
Cfeedforward_mlp_torso/layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
1feedforward_mlp_torso/layer_norm/moments/varianceMean>feedforward_mlp_torso/layer_norm/moments/SquaredDifference:z:0Lfeedforward_mlp_torso/layer_norm/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(u
0feedforward_mlp_torso/layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
.feedforward_mlp_torso/layer_norm/batchnorm/addAddV2:feedforward_mlp_torso/layer_norm/moments/variance:output:09feedforward_mlp_torso/layer_norm/batchnorm/add/y:output:0*
T0*'
_output_shapes
:����������
0feedforward_mlp_torso/layer_norm/batchnorm/RsqrtRsqrt2feedforward_mlp_torso/layer_norm/batchnorm/add:z:0*
T0*'
_output_shapes
:����������
=feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpFfeedforward_mlp_torso_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.feedforward_mlp_torso/layer_norm/batchnorm/mulMul4feedforward_mlp_torso/layer_norm/batchnorm/Rsqrt:y:0Efeedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0feedforward_mlp_torso/layer_norm/batchnorm/mul_1Mul$feedforward_mlp_torso/linear/Add:z:02feedforward_mlp_torso/layer_norm/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
0feedforward_mlp_torso/layer_norm/batchnorm/mul_2Mul6feedforward_mlp_torso/layer_norm/moments/mean:output:02feedforward_mlp_torso/layer_norm/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
9feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOpReadVariableOpBfeedforward_mlp_torso_layer_norm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.feedforward_mlp_torso/layer_norm/batchnorm/subSubAfeedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp:value:04feedforward_mlp_torso/layer_norm/batchnorm/mul_2:z:0*
T0*(
_output_shapes
:�����������
0feedforward_mlp_torso/layer_norm/batchnorm/add_1AddV24feedforward_mlp_torso/layer_norm/batchnorm/mul_1:z:02feedforward_mlp_torso/layer_norm/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
%feedforward_mlp_torso/sequential/TanhTanh4feedforward_mlp_torso/layer_norm/batchnorm/add_1:z:0*
T0*(
_output_shapes
:�����������
8feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOpReadVariableOpAfeedforward_mlp_torso_mlp_linear_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)feedforward_mlp_torso/mlp/linear_0/MatMulMatMul)feedforward_mlp_torso/sequential/Tanh:y:0@feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
5feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOpReadVariableOp>feedforward_mlp_torso_mlp_linear_0_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&feedforward_mlp_torso/mlp/linear_0/AddAddV23feedforward_mlp_torso/mlp/linear_0/MatMul:product:0=feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
feedforward_mlp_torso/mlp/EluElu*feedforward_mlp_torso/mlp/linear_0/Add:z:0*
T0*(
_output_shapes
:�����������
8feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOpReadVariableOpAfeedforward_mlp_torso_mlp_linear_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)feedforward_mlp_torso/mlp/linear_1/MatMulMatMul+feedforward_mlp_torso/mlp/Elu:activations:0@feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
5feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOpReadVariableOp>feedforward_mlp_torso_mlp_linear_1_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&feedforward_mlp_torso/mlp/linear_1/AddAddV23feedforward_mlp_torso/mlp/linear_1/MatMul:product:0=feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
feedforward_mlp_torso/mlp/Elu_1Elu*feedforward_mlp_torso/mlp/linear_1/Add:z:0*
T0*(
_output_shapes
:�����������
2near_zero_initialized_linear/MatMul/ReadVariableOpReadVariableOp;near_zero_initialized_linear_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
#near_zero_initialized_linear/MatMulMatMul-feedforward_mlp_torso/mlp/Elu_1:activations:0:near_zero_initialized_linear/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/near_zero_initialized_linear/Add/ReadVariableOpReadVariableOp8near_zero_initialized_linear_add_readvariableop_resource*
_output_shapes
:*
dtype0�
 near_zero_initialized_linear/AddAddV2-near_zero_initialized_linear/MatMul:product:07near_zero_initialized_linear/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������q
tanh_to_spec/TanhTanh$near_zero_initialized_linear/Add:z:0*
T0*'
_output_shapes
:���������W
tanh_to_spec/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
tanh_to_spec/addAddV2tanh_to_spec/Tanh:y:0tanh_to_spec/add/y:output:0*
T0*'
_output_shapes
:���������W
tanh_to_spec/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?|
tanh_to_spec/mulMultanh_to_spec/mul/x:output:0tanh_to_spec/add:z:0*
T0*'
_output_shapes
:���������a
tanh_to_spec/mul_1/yConst*
_output_shapes
:*
dtype0*
valueB*   @�
tanh_to_spec/mul_1Multanh_to_spec/mul:z:0tanh_to_spec/mul_1/y:output:0*
T0*'
_output_shapes
:���������a
tanh_to_spec/add_1/yConst*
_output_shapes
:*
dtype0*
valueB*  ���
tanh_to_spec/add_1AddV2tanh_to_spec/mul_1:z:0tanh_to_spec/add_1/y:output:0*
T0*'
_output_shapes
:���������e
IdentityIdentitytanh_to_spec/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp:^feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp>^feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp0^feedforward_mlp_torso/linear/Add/ReadVariableOp3^feedforward_mlp_torso/linear/MatMul/ReadVariableOp6^feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp9^feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp6^feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp9^feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp0^near_zero_initialized_linear/Add/ReadVariableOp3^near_zero_initialized_linear/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2v
9feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp9feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp2~
=feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp=feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp2b
/feedforward_mlp_torso/linear/Add/ReadVariableOp/feedforward_mlp_torso/linear/Add/ReadVariableOp2h
2feedforward_mlp_torso/linear/MatMul/ReadVariableOp2feedforward_mlp_torso/linear/MatMul/ReadVariableOp2n
5feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp5feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp2t
8feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp8feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp2n
5feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp5feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp2t
8feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp8feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp2b
/near_zero_initialized_linear/Add/ReadVariableOp/near_zero_initialized_linear/Add/ReadVariableOp2h
2near_zero_initialized_linear/MatMul/ReadVariableOp2near_zero_initialized_linear/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameargs_0
�"
�
__inference__traced_save_15330
file_prefix=
9savev2_feedforward_mlp_torso_linear_b_read_readvariableop=
9savev2_feedforward_mlp_torso_linear_w_read_readvariableopF
Bsavev2_feedforward_mlp_torso_layer_norm_offset_read_readvariableopE
Asavev2_feedforward_mlp_torso_layer_norm_scale_read_readvariableopC
?savev2_feedforward_mlp_torso_mlp_linear_0_b_read_readvariableopC
?savev2_feedforward_mlp_torso_mlp_linear_0_w_read_readvariableopC
?savev2_feedforward_mlp_torso_mlp_linear_1_b_read_readvariableopC
?savev2_feedforward_mlp_torso_mlp_linear_1_w_read_readvariableop=
9savev2_near_zero_initialized_linear_b_read_readvariableop=
9savev2_near_zero_initialized_linear_w_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B'_variables/0/.ATTRIBUTES/VARIABLE_VALUEB'_variables/1/.ATTRIBUTES/VARIABLE_VALUEB'_variables/2/.ATTRIBUTES/VARIABLE_VALUEB'_variables/3/.ATTRIBUTES/VARIABLE_VALUEB'_variables/4/.ATTRIBUTES/VARIABLE_VALUEB'_variables/5/.ATTRIBUTES/VARIABLE_VALUEB'_variables/6/.ATTRIBUTES/VARIABLE_VALUEB'_variables/7/.ATTRIBUTES/VARIABLE_VALUEB'_variables/8/.ATTRIBUTES/VARIABLE_VALUEB'_variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:09savev2_feedforward_mlp_torso_linear_b_read_readvariableop9savev2_feedforward_mlp_torso_linear_w_read_readvariableopBsavev2_feedforward_mlp_torso_layer_norm_offset_read_readvariableopAsavev2_feedforward_mlp_torso_layer_norm_scale_read_readvariableop?savev2_feedforward_mlp_torso_mlp_linear_0_b_read_readvariableop?savev2_feedforward_mlp_torso_mlp_linear_0_w_read_readvariableop?savev2_feedforward_mlp_torso_mlp_linear_1_b_read_readvariableop?savev2_feedforward_mlp_torso_mlp_linear_1_w_read_readvariableop9savev2_near_zero_initialized_linear_b_read_readvariableop9savev2_near_zero_initialized_linear_w_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*n
_input_shapes]
[: :�:	�:�:�:�:
��:�:
��::	�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:!

_output_shapes	
:�:%!

_output_shapes
:	�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��: 	

_output_shapes
::%
!

_output_shapes
:	�:

_output_shapes
: "�J
saver_filename:0StatefulPartitionedCall:0StatefulPartitionedCall_18"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:�
l

_variables
_trainable_variables
__call__
_module

signatures"
acme_snapshot
g
0
1
2
	3

4
5
6
7
8
9"
trackable_tuple_wrapper
g
0
1
2
	3

4
5
6
7
8
9"
trackable_tuple_wrapper
�2�
__inference___call___15210�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
 __inference_wrapped_module_15279�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
"
signature_map
-:+�2feedforward_mlp_torso/linear/b
1:/	�2feedforward_mlp_torso/linear/w
6:4�2'feedforward_mlp_torso/layer_norm/offset
5:3�2&feedforward_mlp_torso/layer_norm/scale
3:1�2$feedforward_mlp_torso/mlp/linear_0/b
8:6
��2$feedforward_mlp_torso/mlp/linear_0/w
3:1�2$feedforward_mlp_torso/mlp/linear_1/b
8:6
��2$feedforward_mlp_torso/mlp/linear_1/w
,:*2near_zero_initialized_linear/b
1:/	�2near_zero_initialized_linear/wu
__inference___call___15210W
	
/�,
%�"
 �
args_0���������
� "����������{
 __inference_wrapped_module_15279W
	
/�,
%�"
 �
args_0���������
� "����������