вЁ'
√╨
B
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
└
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
*
Erf
x"T
y"T"
Ttype:
2
·
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
╛
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.12v2.4.0-49-g85c8b2a817f8яФ"
f
	Yogi/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Yogi/iter
_
Yogi/iter/Read/ReadVariableOpReadVariableOp	Yogi/iter*
_output_shapes
: *
dtype0	
j
Yogi/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameYogi/beta_1
c
Yogi/beta_1/Read/ReadVariableOpReadVariableOpYogi/beta_1*
_output_shapes
: *
dtype0
j
Yogi/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameYogi/beta_2
c
Yogi/beta_2/Read/ReadVariableOpReadVariableOpYogi/beta_2*
_output_shapes
: *
dtype0
h

Yogi/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Yogi/decay
a
Yogi/decay/Read/ReadVariableOpReadVariableOp
Yogi/decay*
_output_shapes
: *
dtype0
l
Yogi/epsilonVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameYogi/epsilon
e
 Yogi/epsilon/Read/ReadVariableOpReadVariableOpYogi/epsilon*
_output_shapes
: *
dtype0
Т
Yogi/l1_regularization_strengthVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Yogi/l1_regularization_strength
Л
3Yogi/l1_regularization_strength/Read/ReadVariableOpReadVariableOpYogi/l1_regularization_strength*
_output_shapes
: *
dtype0
Т
Yogi/l2_regularization_strengthVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Yogi/l2_regularization_strength
Л
3Yogi/l2_regularization_strength/Read/ReadVariableOpReadVariableOpYogi/l2_regularization_strength*
_output_shapes
: *
dtype0
x
Yogi/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameYogi/learning_rate
q
&Yogi/learning_rate/Read/ReadVariableOpReadVariableOpYogi/learning_rate*
_output_shapes
: *
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА1*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
АА1*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А1*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А1*
dtype0
Л
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А1**
shared_namebatch_normalization/gamma
Д
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes	
:А1*
dtype0
Й
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А1*)
shared_namebatch_normalization/beta
В
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes	
:А1*
dtype0
У
conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*(
shared_nameconv2d_transpose/kernel
М
+conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose/kernel*'
_output_shapes
:@А*
dtype0
В
conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameconv2d_transpose/bias
{
)conv2d_transpose/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose/bias*
_output_shapes
:@*
dtype0
О
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_1/gamma
З
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:@*
dtype0
М
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_1/beta
Е
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:@*
dtype0
Ц
conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameconv2d_transpose_1/kernel
П
-conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*&
_output_shapes
:@*
dtype0
Ж
conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_1/bias

+conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/bias*
_output_shapes
:*
dtype0
Ч
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А1*0
shared_name!batch_normalization/moving_mean
Р
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes	
:А1*
dtype0
Я
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А1*4
shared_name%#batch_normalization/moving_variance
Ш
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes	
:А1*
dtype0
Ъ
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_1/moving_mean
У
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:@*
dtype0
в
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_1/moving_variance
Ы
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:@*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:@*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0
О
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_2/gamma
З
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:@*
dtype0
М
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_2/beta
Е
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:@*
dtype0
Ъ
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_2/moving_mean
У
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:@*
dtype0
в
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_2/moving_variance
Ы
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:@*
dtype0
Г
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А* 
shared_nameconv2d_1/kernel
|
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*'
_output_shapes
:@А*
dtype0
s
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_1/bias
l
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes	
:А*
dtype0
П
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_3/gamma
И
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes	
:А*
dtype0
Н
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_namebatch_normalization_3/beta
Ж
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes	
:А*
dtype0
Ы
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!batch_normalization_3/moving_mean
Ф
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes	
:А*
dtype0
г
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*6
shared_name'%batch_normalization_3/moving_variance
Ь
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes	
:А*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А1*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	А1*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
j
Yogi/iter_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameYogi/iter_1
c
Yogi/iter_1/Read/ReadVariableOpReadVariableOpYogi/iter_1*
_output_shapes
: *
dtype0	
n
Yogi/beta_1_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameYogi/beta_1_1
g
!Yogi/beta_1_1/Read/ReadVariableOpReadVariableOpYogi/beta_1_1*
_output_shapes
: *
dtype0
n
Yogi/beta_2_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameYogi/beta_2_1
g
!Yogi/beta_2_1/Read/ReadVariableOpReadVariableOpYogi/beta_2_1*
_output_shapes
: *
dtype0
l
Yogi/decay_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameYogi/decay_1
e
 Yogi/decay_1/Read/ReadVariableOpReadVariableOpYogi/decay_1*
_output_shapes
: *
dtype0
p
Yogi/epsilon_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameYogi/epsilon_1
i
"Yogi/epsilon_1/Read/ReadVariableOpReadVariableOpYogi/epsilon_1*
_output_shapes
: *
dtype0
Ц
!Yogi/l1_regularization_strength_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Yogi/l1_regularization_strength_1
П
5Yogi/l1_regularization_strength_1/Read/ReadVariableOpReadVariableOp!Yogi/l1_regularization_strength_1*
_output_shapes
: *
dtype0
Ц
!Yogi/l2_regularization_strength_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Yogi/l2_regularization_strength_1
П
5Yogi/l2_regularization_strength_1/Read/ReadVariableOpReadVariableOp!Yogi/l2_regularization_strength_1*
_output_shapes
: *
dtype0
|
Yogi/learning_rate_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameYogi/learning_rate_1
u
(Yogi/learning_rate_1/Read/ReadVariableOpReadVariableOpYogi/learning_rate_1*
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
Д
Yogi/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА1*$
shared_nameYogi/dense/kernel/v
}
'Yogi/dense/kernel/v/Read/ReadVariableOpReadVariableOpYogi/dense/kernel/v* 
_output_shapes
:
АА1*
dtype0
{
Yogi/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А1*"
shared_nameYogi/dense/bias/v
t
%Yogi/dense/bias/v/Read/ReadVariableOpReadVariableOpYogi/dense/bias/v*
_output_shapes	
:А1*
dtype0
Щ
 Yogi/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А1*1
shared_name" Yogi/batch_normalization/gamma/v
Т
4Yogi/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Yogi/batch_normalization/gamma/v*
_output_shapes	
:А1*
dtype0
Ч
Yogi/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А1*0
shared_name!Yogi/batch_normalization/beta/v
Р
3Yogi/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOpYogi/batch_normalization/beta/v*
_output_shapes	
:А1*
dtype0
б
Yogi/conv2d_transpose/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*/
shared_name Yogi/conv2d_transpose/kernel/v
Ъ
2Yogi/conv2d_transpose/kernel/v/Read/ReadVariableOpReadVariableOpYogi/conv2d_transpose/kernel/v*'
_output_shapes
:@А*
dtype0
Р
Yogi/conv2d_transpose/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameYogi/conv2d_transpose/bias/v
Й
0Yogi/conv2d_transpose/bias/v/Read/ReadVariableOpReadVariableOpYogi/conv2d_transpose/bias/v*
_output_shapes
:@*
dtype0
Ь
"Yogi/batch_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Yogi/batch_normalization_1/gamma/v
Х
6Yogi/batch_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp"Yogi/batch_normalization_1/gamma/v*
_output_shapes
:@*
dtype0
Ъ
!Yogi/batch_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Yogi/batch_normalization_1/beta/v
У
5Yogi/batch_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp!Yogi/batch_normalization_1/beta/v*
_output_shapes
:@*
dtype0
д
 Yogi/conv2d_transpose_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Yogi/conv2d_transpose_1/kernel/v
Э
4Yogi/conv2d_transpose_1/kernel/v/Read/ReadVariableOpReadVariableOp Yogi/conv2d_transpose_1/kernel/v*&
_output_shapes
:@*
dtype0
Ф
Yogi/conv2d_transpose_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Yogi/conv2d_transpose_1/bias/v
Н
2Yogi/conv2d_transpose_1/bias/v/Read/ReadVariableOpReadVariableOpYogi/conv2d_transpose_1/bias/v*
_output_shapes
:*
dtype0
Д
Yogi/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА1*$
shared_nameYogi/dense/kernel/m
}
'Yogi/dense/kernel/m/Read/ReadVariableOpReadVariableOpYogi/dense/kernel/m* 
_output_shapes
:
АА1*
dtype0
{
Yogi/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А1*"
shared_nameYogi/dense/bias/m
t
%Yogi/dense/bias/m/Read/ReadVariableOpReadVariableOpYogi/dense/bias/m*
_output_shapes	
:А1*
dtype0
Щ
 Yogi/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А1*1
shared_name" Yogi/batch_normalization/gamma/m
Т
4Yogi/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Yogi/batch_normalization/gamma/m*
_output_shapes	
:А1*
dtype0
Ч
Yogi/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А1*0
shared_name!Yogi/batch_normalization/beta/m
Р
3Yogi/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOpYogi/batch_normalization/beta/m*
_output_shapes	
:А1*
dtype0
б
Yogi/conv2d_transpose/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*/
shared_name Yogi/conv2d_transpose/kernel/m
Ъ
2Yogi/conv2d_transpose/kernel/m/Read/ReadVariableOpReadVariableOpYogi/conv2d_transpose/kernel/m*'
_output_shapes
:@А*
dtype0
Р
Yogi/conv2d_transpose/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameYogi/conv2d_transpose/bias/m
Й
0Yogi/conv2d_transpose/bias/m/Read/ReadVariableOpReadVariableOpYogi/conv2d_transpose/bias/m*
_output_shapes
:@*
dtype0
Ь
"Yogi/batch_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Yogi/batch_normalization_1/gamma/m
Х
6Yogi/batch_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp"Yogi/batch_normalization_1/gamma/m*
_output_shapes
:@*
dtype0
Ъ
!Yogi/batch_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Yogi/batch_normalization_1/beta/m
У
5Yogi/batch_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp!Yogi/batch_normalization_1/beta/m*
_output_shapes
:@*
dtype0
д
 Yogi/conv2d_transpose_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Yogi/conv2d_transpose_1/kernel/m
Э
4Yogi/conv2d_transpose_1/kernel/m/Read/ReadVariableOpReadVariableOp Yogi/conv2d_transpose_1/kernel/m*&
_output_shapes
:@*
dtype0
Ф
Yogi/conv2d_transpose_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Yogi/conv2d_transpose_1/bias/m
Н
2Yogi/conv2d_transpose_1/bias/m/Read/ReadVariableOpReadVariableOpYogi/conv2d_transpose_1/bias/m*
_output_shapes
:*
dtype0
М
Yogi/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameYogi/conv2d/kernel/v
Е
(Yogi/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpYogi/conv2d/kernel/v*&
_output_shapes
:@*
dtype0
|
Yogi/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameYogi/conv2d/bias/v
u
&Yogi/conv2d/bias/v/Read/ReadVariableOpReadVariableOpYogi/conv2d/bias/v*
_output_shapes
:@*
dtype0
Ь
"Yogi/batch_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Yogi/batch_normalization_2/gamma/v
Х
6Yogi/batch_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp"Yogi/batch_normalization_2/gamma/v*
_output_shapes
:@*
dtype0
Ъ
!Yogi/batch_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Yogi/batch_normalization_2/beta/v
У
5Yogi/batch_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp!Yogi/batch_normalization_2/beta/v*
_output_shapes
:@*
dtype0
С
Yogi/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*'
shared_nameYogi/conv2d_1/kernel/v
К
*Yogi/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpYogi/conv2d_1/kernel/v*'
_output_shapes
:@А*
dtype0
Б
Yogi/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameYogi/conv2d_1/bias/v
z
(Yogi/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpYogi/conv2d_1/bias/v*
_output_shapes	
:А*
dtype0
Э
"Yogi/batch_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Yogi/batch_normalization_3/gamma/v
Ц
6Yogi/batch_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp"Yogi/batch_normalization_3/gamma/v*
_output_shapes	
:А*
dtype0
Ы
!Yogi/batch_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!Yogi/batch_normalization_3/beta/v
Ф
5Yogi/batch_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp!Yogi/batch_normalization_3/beta/v*
_output_shapes	
:А*
dtype0
З
Yogi/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А1*&
shared_nameYogi/dense_1/kernel/v
А
)Yogi/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpYogi/dense_1/kernel/v*
_output_shapes
:	А1*
dtype0
~
Yogi/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameYogi/dense_1/bias/v
w
'Yogi/dense_1/bias/v/Read/ReadVariableOpReadVariableOpYogi/dense_1/bias/v*
_output_shapes
:*
dtype0
М
Yogi/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameYogi/conv2d/kernel/m
Е
(Yogi/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpYogi/conv2d/kernel/m*&
_output_shapes
:@*
dtype0
|
Yogi/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameYogi/conv2d/bias/m
u
&Yogi/conv2d/bias/m/Read/ReadVariableOpReadVariableOpYogi/conv2d/bias/m*
_output_shapes
:@*
dtype0
Ь
"Yogi/batch_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Yogi/batch_normalization_2/gamma/m
Х
6Yogi/batch_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp"Yogi/batch_normalization_2/gamma/m*
_output_shapes
:@*
dtype0
Ъ
!Yogi/batch_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Yogi/batch_normalization_2/beta/m
У
5Yogi/batch_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp!Yogi/batch_normalization_2/beta/m*
_output_shapes
:@*
dtype0
С
Yogi/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*'
shared_nameYogi/conv2d_1/kernel/m
К
*Yogi/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpYogi/conv2d_1/kernel/m*'
_output_shapes
:@А*
dtype0
Б
Yogi/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameYogi/conv2d_1/bias/m
z
(Yogi/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpYogi/conv2d_1/bias/m*
_output_shapes	
:А*
dtype0
Э
"Yogi/batch_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Yogi/batch_normalization_3/gamma/m
Ц
6Yogi/batch_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp"Yogi/batch_normalization_3/gamma/m*
_output_shapes	
:А*
dtype0
Ы
!Yogi/batch_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!Yogi/batch_normalization_3/beta/m
Ф
5Yogi/batch_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp!Yogi/batch_normalization_3/beta/m*
_output_shapes	
:А*
dtype0
З
Yogi/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А1*&
shared_nameYogi/dense_1/kernel/m
А
)Yogi/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpYogi/dense_1/kernel/m*
_output_shapes
:	А1*
dtype0
~
Yogi/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameYogi/dense_1/bias/m
w
'Yogi/dense_1/bias/m/Read/ReadVariableOpReadVariableOpYogi/dense_1/bias/m*
_output_shapes
:*
dtype0

NoOpNoOp
─М
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*■Л
valueєЛBяЛ BчЛ
┐
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
в
	layer_with_weights-0
	layer-0

layer_with_weights-1

layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
regularization_losses
trainable_variables
	variables
	keras_api
╦
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer_with_weights-4
layer-7
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api
╒
 iter

!beta_1

"beta_2
	#decay
$epsilon
%l1_regularization_strength
&l2_regularization_strength
'learning_rate(vч)vш*vщ+vъ,vы-vь.vэ/vю0vя1vЁ(mё)mЄ*mє+mЇ,mї-mЎ.mў/m°0m∙1m·
 
F
(0
)1
*2
+3
,4
-5
.6
/7
08
19
╓
(0
)1
*2
+3
24
35
,6
-7
.8
/9
410
511
012
113
614
715
816
917
:18
;19
<20
=21
>22
?23
@24
A25
B26
C27
н
regularization_losses
Dlayer_regularization_losses
trainable_variables
Emetrics

Flayers
Glayer_metrics
Hnon_trainable_variables
	variables
 
h

(kernel
)bias
Iregularization_losses
Jtrainable_variables
K	variables
L	keras_api
Ч
Maxis
	*gamma
+beta
2moving_mean
3moving_variance
Nregularization_losses
Otrainable_variables
P	variables
Q	keras_api
R
Rregularization_losses
Strainable_variables
T	variables
U	keras_api
h

,kernel
-bias
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api
Ч
Zaxis
	.gamma
/beta
4moving_mean
5moving_variance
[regularization_losses
\trainable_variables
]	variables
^	keras_api
h

0kernel
1bias
_regularization_losses
`trainable_variables
a	variables
b	keras_api
 
F
(0
)1
*2
+3
,4
-5
.6
/7
08
19
f
(0
)1
*2
+3
24
35
,6
-7
.8
/9
410
511
012
113
н
regularization_losses
clayer_regularization_losses
trainable_variables
dmetrics

elayers
flayer_metrics
gnon_trainable_variables
	variables
h

6kernel
7bias
hregularization_losses
itrainable_variables
j	variables
k	keras_api
Ч
laxis
	8gamma
9beta
:moving_mean
;moving_variance
mregularization_losses
ntrainable_variables
o	variables
p	keras_api
R
qregularization_losses
rtrainable_variables
s	variables
t	keras_api
h

<kernel
=bias
uregularization_losses
vtrainable_variables
w	variables
x	keras_api
Ч
yaxis
	>gamma
?beta
@moving_mean
Amoving_variance
zregularization_losses
{trainable_variables
|	variables
}	keras_api
T
~regularization_losses
trainable_variables
А	variables
Б	keras_api
V
Вregularization_losses
Гtrainable_variables
Д	variables
Е	keras_api
l

Bkernel
Cbias
Жregularization_losses
Зtrainable_variables
И	variables
Й	keras_api
▌
	Кiter
Лbeta_1
Мbeta_2

Нdecay
Оepsilon
Пl1_regularization_strength
Рl2_regularization_strength
Сlearning_rate6v√7v№8v¤9v■<v =vА>vБ?vВBvГCvД6mЕ7mЖ8mЗ9mИ<mЙ=mК>mЛ?mМBmНCmО
 
 
f
60
71
82
93
:4
;5
<6
=7
>8
?9
@10
A11
B12
C13
▓
regularization_losses
 Тlayer_regularization_losses
trainable_variables
Уmetrics
Фlayers
Хlayer_metrics
Цnon_trainable_variables
	variables
HF
VARIABLE_VALUE	Yogi/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEYogi/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEYogi/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Yogi/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEYogi/epsilon,optimizer/epsilon/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEYogi/l1_regularization_strength?optimizer/l1_regularization_strength/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEYogi/l2_regularization_strength?optimizer/l2_regularization_strength/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEYogi/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdense/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUE
dense/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEbatch_normalization/gamma0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEbatch_normalization/beta0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEconv2d_transpose/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEconv2d_transpose/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbatch_normalization_1/gamma0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbatch_normalization_1/beta0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEconv2d_transpose_1/kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEconv2d_transpose_1/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEbatch_normalization/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#batch_normalization/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_1/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_1/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEconv2d/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEconv2d/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEbatch_normalization_2/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbatch_normalization_2/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_2/moving_mean'variables/18/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_2/moving_variance'variables/19/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEconv2d_1/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEconv2d_1/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEbatch_normalization_3/gamma'variables/22/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbatch_normalization_3/beta'variables/23/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_3/moving_mean'variables/24/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_3/moving_variance'variables/25/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_1/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_1/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE
 

Ч0

0
1
 
Ж
20
31
42
53
64
75
86
97
:8
;9
<10
=11
>12
?13
@14
A15
B16
C17
 

(0
)1

(0
)1
▓
Iregularization_losses
 Шlayer_regularization_losses
Jtrainable_variables
Щmetrics
Ъlayer_metrics
Ыnon_trainable_variables
K	variables
Ьlayers
 
 

*0
+1

*0
+1
22
33
▓
Nregularization_losses
 Эlayer_regularization_losses
Otrainable_variables
Юmetrics
Яlayer_metrics
аnon_trainable_variables
P	variables
бlayers
 
 
 
▓
Rregularization_losses
 вlayer_regularization_losses
Strainable_variables
гmetrics
дlayer_metrics
еnon_trainable_variables
T	variables
жlayers
 

,0
-1

,0
-1
▓
Vregularization_losses
 зlayer_regularization_losses
Wtrainable_variables
иmetrics
йlayer_metrics
кnon_trainable_variables
X	variables
лlayers
 
 

.0
/1

.0
/1
42
53
▓
[regularization_losses
 мlayer_regularization_losses
\trainable_variables
нmetrics
оlayer_metrics
пnon_trainable_variables
]	variables
░layers
 

00
11

00
11
▓
_regularization_losses
 ▒layer_regularization_losses
`trainable_variables
▓metrics
│layer_metrics
┤non_trainable_variables
a	variables
╡layers
 
 
*
	0

1
2
3
4
5
 

20
31
42
53
 
 

60
71
▓
hregularization_losses
 ╢layer_regularization_losses
itrainable_variables
╖metrics
╕layer_metrics
╣non_trainable_variables
j	variables
║layers
 
 
 

80
91
:2
;3
▓
mregularization_losses
 ╗layer_regularization_losses
ntrainable_variables
╝metrics
╜layer_metrics
╛non_trainable_variables
o	variables
┐layers
 
 
 
▓
qregularization_losses
 └layer_regularization_losses
rtrainable_variables
┴metrics
┬layer_metrics
├non_trainable_variables
s	variables
─layers
 
 

<0
=1
▓
uregularization_losses
 ┼layer_regularization_losses
vtrainable_variables
╞metrics
╟layer_metrics
╚non_trainable_variables
w	variables
╔layers
 
 
 

>0
?1
@2
A3
▓
zregularization_losses
 ╩layer_regularization_losses
{trainable_variables
╦metrics
╠layer_metrics
═non_trainable_variables
|	variables
╬layers
 
 
 
│
~regularization_losses
 ╧layer_regularization_losses
trainable_variables
╨metrics
╤layer_metrics
╥non_trainable_variables
А	variables
╙layers
 
 
 
╡
Вregularization_losses
 ╘layer_regularization_losses
Гtrainable_variables
╒metrics
╓layer_metrics
╫non_trainable_variables
Д	variables
╪layers
 
 

B0
C1
╡
Жregularization_losses
 ┘layer_regularization_losses
Зtrainable_variables
┌metrics
█layer_metrics
▄non_trainable_variables
И	variables
▌layers
_]
VARIABLE_VALUEYogi/iter_1>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEYogi/beta_1_1@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEYogi/beta_2_1@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEYogi/decay_1?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEYogi/epsilon_1Alayer_with_weights-1/optimizer/epsilon/.ATTRIBUTES/VARIABLE_VALUE
МЙ
VARIABLE_VALUE!Yogi/l1_regularization_strength_1Tlayer_with_weights-1/optimizer/l1_regularization_strength/.ATTRIBUTES/VARIABLE_VALUE
МЙ
VARIABLE_VALUE!Yogi/l2_regularization_strength_1Tlayer_with_weights-1/optimizer/l2_regularization_strength/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUEYogi/learning_rate_1Glayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

▐0
8
0
1
2
3
4
5
6
7
 
f
60
71
82
93
:4
;5
<6
=7
>8
?9
@10
A11
B12
C13
8

▀total

рcount
с	variables
т	keras_api
 
 
 
 
 
 
 
 

20
31
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
 
 
 
 

40
51
 
 
 
 
 
 
 
 
 

60
71
 
 
 
 

80
91
:2
;3
 
 
 
 
 
 
 
 
 

<0
=1
 
 
 
 

>0
?1
@2
A3
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
 
 
 
 

B0
C1
 
8

уtotal

фcount
х	variables
ц	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

▀0
р1

с	variables
fd
VARIABLE_VALUEtotal_1Ilayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEcount_1Ilayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

у0
ф1

х	variables
us
VARIABLE_VALUEYogi/dense/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEYogi/dense/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE Yogi/batch_normalization/gamma/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEYogi/batch_normalization/beta/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEYogi/conv2d_transpose/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEYogi/conv2d_transpose/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE"Yogi/batch_normalization_1/gamma/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUE!Yogi/batch_normalization_1/beta/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE Yogi/conv2d_transpose_1/kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEYogi/conv2d_transpose_1/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEYogi/dense/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEYogi/dense/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE Yogi/batch_normalization/gamma/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEYogi/batch_normalization/beta/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEYogi/conv2d_transpose/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEYogi/conv2d_transpose/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE"Yogi/batch_normalization_1/gamma/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUE!Yogi/batch_normalization_1/beta/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE Yogi/conv2d_transpose_1/kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEYogi/conv2d_transpose_1/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUEYogi/conv2d/kernel/vXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEYogi/conv2d/bias/vXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE"Yogi/batch_normalization_2/gamma/vXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
РН
VARIABLE_VALUE!Yogi/batch_normalization_2/beta/vXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUEYogi/conv2d_1/kernel/vXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUEYogi/conv2d_1/bias/vXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE"Yogi/batch_normalization_3/gamma/vXvariables/22/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
РН
VARIABLE_VALUE!Yogi/batch_normalization_3/beta/vXvariables/23/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUEYogi/dense_1/kernel/vXvariables/26/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEYogi/dense_1/bias/vXvariables/27/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUEYogi/conv2d/kernel/mXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEYogi/conv2d/bias/mXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE"Yogi/batch_normalization_2/gamma/mXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
РН
VARIABLE_VALUE!Yogi/batch_normalization_2/beta/mXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUEYogi/conv2d_1/kernel/mXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUEYogi/conv2d_1/bias/mXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE"Yogi/batch_normalization_3/gamma/mXvariables/22/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
РН
VARIABLE_VALUE!Yogi/batch_normalization_3/beta/mXvariables/23/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUEYogi/dense_1/kernel/mXvariables/26/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEYogi/dense_1/bias/mXvariables/27/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Е
 serving_default_sequential_inputPlaceholder*(
_output_shapes
:         А*
dtype0*
shape:         А
╘
StatefulPartitionedCallStatefulPartitionedCall serving_default_sequential_inputdense/kernel
dense/bias#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betaconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasconv2d/kernelconv2d/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancedense_1/kerneldense_1/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В */
f*R(
&__inference_signature_wrapper_11913182
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ц"
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameYogi/iter/Read/ReadVariableOpYogi/beta_1/Read/ReadVariableOpYogi/beta_2/Read/ReadVariableOpYogi/decay/Read/ReadVariableOp Yogi/epsilon/Read/ReadVariableOp3Yogi/l1_regularization_strength/Read/ReadVariableOp3Yogi/l2_regularization_strength/Read/ReadVariableOp&Yogi/learning_rate/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp+conv2d_transpose/kernel/Read/ReadVariableOp)conv2d_transpose/bias/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp-conv2d_transpose_1/kernel/Read/ReadVariableOp+conv2d_transpose_1/bias/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpYogi/iter_1/Read/ReadVariableOp!Yogi/beta_1_1/Read/ReadVariableOp!Yogi/beta_2_1/Read/ReadVariableOp Yogi/decay_1/Read/ReadVariableOp"Yogi/epsilon_1/Read/ReadVariableOp5Yogi/l1_regularization_strength_1/Read/ReadVariableOp5Yogi/l2_regularization_strength_1/Read/ReadVariableOp(Yogi/learning_rate_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Yogi/dense/kernel/v/Read/ReadVariableOp%Yogi/dense/bias/v/Read/ReadVariableOp4Yogi/batch_normalization/gamma/v/Read/ReadVariableOp3Yogi/batch_normalization/beta/v/Read/ReadVariableOp2Yogi/conv2d_transpose/kernel/v/Read/ReadVariableOp0Yogi/conv2d_transpose/bias/v/Read/ReadVariableOp6Yogi/batch_normalization_1/gamma/v/Read/ReadVariableOp5Yogi/batch_normalization_1/beta/v/Read/ReadVariableOp4Yogi/conv2d_transpose_1/kernel/v/Read/ReadVariableOp2Yogi/conv2d_transpose_1/bias/v/Read/ReadVariableOp'Yogi/dense/kernel/m/Read/ReadVariableOp%Yogi/dense/bias/m/Read/ReadVariableOp4Yogi/batch_normalization/gamma/m/Read/ReadVariableOp3Yogi/batch_normalization/beta/m/Read/ReadVariableOp2Yogi/conv2d_transpose/kernel/m/Read/ReadVariableOp0Yogi/conv2d_transpose/bias/m/Read/ReadVariableOp6Yogi/batch_normalization_1/gamma/m/Read/ReadVariableOp5Yogi/batch_normalization_1/beta/m/Read/ReadVariableOp4Yogi/conv2d_transpose_1/kernel/m/Read/ReadVariableOp2Yogi/conv2d_transpose_1/bias/m/Read/ReadVariableOp(Yogi/conv2d/kernel/v/Read/ReadVariableOp&Yogi/conv2d/bias/v/Read/ReadVariableOp6Yogi/batch_normalization_2/gamma/v/Read/ReadVariableOp5Yogi/batch_normalization_2/beta/v/Read/ReadVariableOp*Yogi/conv2d_1/kernel/v/Read/ReadVariableOp(Yogi/conv2d_1/bias/v/Read/ReadVariableOp6Yogi/batch_normalization_3/gamma/v/Read/ReadVariableOp5Yogi/batch_normalization_3/beta/v/Read/ReadVariableOp)Yogi/dense_1/kernel/v/Read/ReadVariableOp'Yogi/dense_1/bias/v/Read/ReadVariableOp(Yogi/conv2d/kernel/m/Read/ReadVariableOp&Yogi/conv2d/bias/m/Read/ReadVariableOp6Yogi/batch_normalization_2/gamma/m/Read/ReadVariableOp5Yogi/batch_normalization_2/beta/m/Read/ReadVariableOp*Yogi/conv2d_1/kernel/m/Read/ReadVariableOp(Yogi/conv2d_1/bias/m/Read/ReadVariableOp6Yogi/batch_normalization_3/gamma/m/Read/ReadVariableOp5Yogi/batch_normalization_3/beta/m/Read/ReadVariableOp)Yogi/dense_1/kernel/m/Read/ReadVariableOp'Yogi/dense_1/bias/m/Read/ReadVariableOpConst*e
Tin^
\2Z		*
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
GPU2*0J 8В **
f%R#
!__inference__traced_save_11915298
▒
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Yogi/iterYogi/beta_1Yogi/beta_2
Yogi/decayYogi/epsilonYogi/l1_regularization_strengthYogi/l2_regularization_strengthYogi/learning_ratedense/kernel
dense/biasbatch_normalization/gammabatch_normalization/betaconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_1/gammabatch_normalization_1/betaconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization/moving_mean#batch_normalization/moving_variance!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d/kernelconv2d/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancedense_1/kerneldense_1/biasYogi/iter_1Yogi/beta_1_1Yogi/beta_2_1Yogi/decay_1Yogi/epsilon_1!Yogi/l1_regularization_strength_1!Yogi/l2_regularization_strength_1Yogi/learning_rate_1totalcounttotal_1count_1Yogi/dense/kernel/vYogi/dense/bias/v Yogi/batch_normalization/gamma/vYogi/batch_normalization/beta/vYogi/conv2d_transpose/kernel/vYogi/conv2d_transpose/bias/v"Yogi/batch_normalization_1/gamma/v!Yogi/batch_normalization_1/beta/v Yogi/conv2d_transpose_1/kernel/vYogi/conv2d_transpose_1/bias/vYogi/dense/kernel/mYogi/dense/bias/m Yogi/batch_normalization/gamma/mYogi/batch_normalization/beta/mYogi/conv2d_transpose/kernel/mYogi/conv2d_transpose/bias/m"Yogi/batch_normalization_1/gamma/m!Yogi/batch_normalization_1/beta/m Yogi/conv2d_transpose_1/kernel/mYogi/conv2d_transpose_1/bias/mYogi/conv2d/kernel/vYogi/conv2d/bias/v"Yogi/batch_normalization_2/gamma/v!Yogi/batch_normalization_2/beta/vYogi/conv2d_1/kernel/vYogi/conv2d_1/bias/v"Yogi/batch_normalization_3/gamma/v!Yogi/batch_normalization_3/beta/vYogi/dense_1/kernel/vYogi/dense_1/bias/vYogi/conv2d/kernel/mYogi/conv2d/bias/m"Yogi/batch_normalization_2/gamma/m!Yogi/batch_normalization_2/beta/mYogi/conv2d_1/kernel/mYogi/conv2d_1/bias/m"Yogi/batch_normalization_3/gamma/m!Yogi/batch_normalization_3/beta/mYogi/dense_1/kernel/mYogi/dense_1/bias/m*d
Tin]
[2Y*
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
GPU2*0J 8В *-
f(R&
$__inference__traced_restore_11915572°М
д

╣
-__inference_sequential_layer_call_fn_11913974

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИвStatefulPartitionedCall┤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_119117112
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:         А::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
√
Ў
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11914749

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
т
л
8__inference_batch_normalization_3_layer_call_fn_11914878

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_119121322
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
л
F
*__inference_flatten_layer_call_fn_11914991

inputs
identity╟
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_119122222
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А12

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
═
f
G__inference_dropout_1_layer_call_and_return_conditional_losses_11914965

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╜
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ЛХ
С
H__inference_sequential_layer_call_and_return_conditional_losses_11913908

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource9
5batch_normalization_batchnorm_readvariableop_resource=
9batch_normalization_batchnorm_mul_readvariableop_resource;
7batch_normalization_batchnorm_readvariableop_1_resource;
7batch_normalization_batchnorm_readvariableop_2_resource=
9conv2d_transpose_conv2d_transpose_readvariableop_resource4
0conv2d_transpose_biasadd_readvariableop_resource1
-batch_normalization_1_readvariableop_resource3
/batch_normalization_1_readvariableop_1_resourceB
>batch_normalization_1_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource?
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource6
2conv2d_transpose_1_biasadd_readvariableop_resource
identityИв,batch_normalization/batchnorm/ReadVariableOpв.batch_normalization/batchnorm/ReadVariableOp_1в.batch_normalization/batchnorm/ReadVariableOp_2в0batch_normalization/batchnorm/mul/ReadVariableOpв5batch_normalization_1/FusedBatchNormV3/ReadVariableOpв7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_1/ReadVariableOpв&batch_normalization_1/ReadVariableOp_1в'conv2d_transpose/BiasAdd/ReadVariableOpв0conv2d_transpose/conv2d_transpose/ReadVariableOpв)conv2d_transpose_1/BiasAdd/ReadVariableOpв2conv2d_transpose_1/conv2d_transpose/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpб
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
АА1*
dtype02
dense/MatMul/ReadVariableOpЖ
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А12
dense/MatMulЯ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А1*
dtype02
dense/BiasAdd/ReadVariableOpЪ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А12
dense/BiasAddi
dense/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dense/Gelu/mul/xН
dense/Gelu/mulMuldense/Gelu/mul/x:output:0dense/BiasAdd:output:0*
T0*(
_output_shapes
:         А12
dense/Gelu/mulk
dense/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
dense/Gelu/Cast/xЪ
dense/Gelu/truedivRealDivdense/BiasAdd:output:0dense/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:         А12
dense/Gelu/truedivr
dense/Gelu/ErfErfdense/Gelu/truediv:z:0*
T0*(
_output_shapes
:         А12
dense/Gelu/Erfi
dense/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
dense/Gelu/add/xЛ
dense/Gelu/addAddV2dense/Gelu/add/x:output:0dense/Gelu/Erf:y:0*
T0*(
_output_shapes
:         А12
dense/Gelu/addЖ
dense/Gelu/mul_1Muldense/Gelu/mul:z:0dense/Gelu/add:z:0*
T0*(
_output_shapes
:         А12
dense/Gelu/mul_1╧
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:А1*
dtype02.
,batch_normalization/batchnorm/ReadVariableOpП
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2%
#batch_normalization/batchnorm/add/y┘
!batch_normalization/batchnorm/addAddV24batch_normalization/batchnorm/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А12#
!batch_normalization/batchnorm/addа
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:А12%
#batch_normalization/batchnorm/Rsqrt█
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А1*
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOp╓
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А12#
!batch_normalization/batchnorm/mul┴
#batch_normalization/batchnorm/mul_1Muldense/Gelu/mul_1:z:0%batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А12%
#batch_normalization/batchnorm/mul_1╒
.batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp7batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:А1*
dtype020
.batch_normalization/batchnorm/ReadVariableOp_1╓
#batch_normalization/batchnorm/mul_2Mul6batch_normalization/batchnorm/ReadVariableOp_1:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:А12%
#batch_normalization/batchnorm/mul_2╒
.batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp7batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:А1*
dtype020
.batch_normalization/batchnorm/ReadVariableOp_2╘
!batch_normalization/batchnorm/subSub6batch_normalization/batchnorm/ReadVariableOp_2:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А12#
!batch_normalization/batchnorm/sub╓
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А12%
#batch_normalization/batchnorm/add_1u
reshape/ShapeShape'batch_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
reshape/ShapeД
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stackИ
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1И
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2Т
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2u
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2
reshape/Reshape/shape/3ъ
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape▒
reshape/ReshapeReshape'batch_normalization/batchnorm/add_1:z:0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:         А2
reshape/Reshapex
conv2d_transpose/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose/ShapeЦ
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$conv2d_transpose/strided_slice/stackЪ
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_1Ъ
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_2╚
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
conv2d_transpose/strided_slicev
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose/stack/1v
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose/stack/2v
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose/stack/3°
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose/stackЪ
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose/strided_slice_1/stackЮ
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_1Ю
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_2╥
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose/strided_slice_1ч
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype022
0conv2d_transpose/conv2d_transpose/ReadVariableOp┤
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0reshape/Reshape:output:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2#
!conv2d_transpose/conv2d_transpose┐
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'conv2d_transpose/BiasAdd/ReadVariableOp╓
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_transpose/BiasAdd
conv2d_transpose/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv2d_transpose/Gelu/mul/x└
conv2d_transpose/Gelu/mulMul$conv2d_transpose/Gelu/mul/x:output:0!conv2d_transpose/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_transpose/Gelu/mulБ
conv2d_transpose/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
conv2d_transpose/Gelu/Cast/x═
conv2d_transpose/Gelu/truedivRealDiv!conv2d_transpose/BiasAdd:output:0%conv2d_transpose/Gelu/Cast/x:output:0*
T0*/
_output_shapes
:         @2
conv2d_transpose/Gelu/truedivЪ
conv2d_transpose/Gelu/ErfErf!conv2d_transpose/Gelu/truediv:z:0*
T0*/
_output_shapes
:         @2
conv2d_transpose/Gelu/Erf
conv2d_transpose/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
conv2d_transpose/Gelu/add/x╛
conv2d_transpose/Gelu/addAddV2$conv2d_transpose/Gelu/add/x:output:0conv2d_transpose/Gelu/Erf:y:0*
T0*/
_output_shapes
:         @2
conv2d_transpose/Gelu/add╣
conv2d_transpose/Gelu/mul_1Mulconv2d_transpose/Gelu/mul:z:0conv2d_transpose/Gelu/add:z:0*
T0*/
_output_shapes
:         @2
conv2d_transpose/Gelu/mul_1╢
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_1/ReadVariableOp╝
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_1/ReadVariableOp_1щ
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ч
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_transpose/Gelu/mul_1:z:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_1/FusedBatchNormV3О
conv2d_transpose_1/ShapeShape*batch_normalization_1/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
conv2d_transpose_1/ShapeЪ
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_1/strided_slice/stackЮ
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_1Ю
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_2╘
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_1/strided_slicez
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_1/stack/1z
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_1/stack/2z
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_1/stack/3Д
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_1/stackЮ
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_1/strided_slice_1/stackв
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_1в
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_2▐
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_1/strided_slice_1ь
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype024
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp╬
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
2%
#conv2d_transpose_1/conv2d_transpose┼
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)conv2d_transpose_1/BiasAdd/ReadVariableOp▐
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2
conv2d_transpose_1/BiasAddв
conv2d_transpose_1/SigmoidSigmoid#conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_transpose_1/Sigmoid√
IdentityIdentityconv2d_transpose_1/Sigmoid:y:0-^batch_normalization/batchnorm/ReadVariableOp/^batch_normalization/batchnorm/ReadVariableOp_1/^batch_normalization/batchnorm/ReadVariableOp_21^batch_normalization/batchnorm/mul/ReadVariableOp6^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:         А::::::::::::::2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2`
.batch_normalization/batchnorm/ReadVariableOp_1.batch_normalization/batchnorm/ReadVariableOp_12`
.batch_normalization/batchnorm/ReadVariableOp_2.batch_normalization/batchnorm/ReadVariableOp_22d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╓W
Я
J__inference_sequential_1_layer_call_and_return_conditional_losses_11912699

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource1
-batch_normalization_2_readvariableop_resource3
/batch_normalization_2_readvariableop_1_resourceB
>batch_normalization_2_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource1
-batch_normalization_3_readvariableop_resource3
/batch_normalization_3_readvariableop_1_resourceB
>batch_normalization_3_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityИв5batch_normalization_2/FusedBatchNormV3/ReadVariableOpв7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_2/ReadVariableOpв&batch_normalization_2/ReadVariableOp_1в5batch_normalization_3/FusedBatchNormV3/ReadVariableOpв7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_3/ReadVariableOpв&batch_normalization_3/ReadVariableOp_1вconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpк
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp╕
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d/Conv2Dб
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOpд
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d/BiasAddk
conv2d/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv2d/Gelu/mul/xШ
conv2d/Gelu/mulMulconv2d/Gelu/mul/x:output:0conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/mulm
conv2d/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
conv2d/Gelu/Cast/xе
conv2d/Gelu/truedivRealDivconv2d/BiasAdd:output:0conv2d/Gelu/Cast/x:output:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/truediv|
conv2d/Gelu/ErfErfconv2d/Gelu/truediv:z:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/Erfk
conv2d/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
conv2d/Gelu/add/xЦ
conv2d/Gelu/addAddV2conv2d/Gelu/add/x:output:0conv2d/Gelu/Erf:y:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/addС
conv2d/Gelu/mul_1Mulconv2d/Gelu/mul:z:0conv2d/Gelu/add:z:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/mul_1╢
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_2/ReadVariableOp╝
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_2/ReadVariableOp_1щ
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1▌
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d/Gelu/mul_1:z:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_2/FusedBatchNormV3Ц
dropout/IdentityIdentity*batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @2
dropout/Identity▒
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02 
conv2d_1/Conv2D/ReadVariableOp╥
conv2d_1/Conv2DConv2Ddropout/Identity:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_1/Conv2Dи
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_1/BiasAdd/ReadVariableOpн
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_1/BiasAddo
conv2d_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv2d_1/Gelu/mul/xб
conv2d_1/Gelu/mulMulconv2d_1/Gelu/mul/x:output:0conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/mulq
conv2d_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
conv2d_1/Gelu/Cast/xо
conv2d_1/Gelu/truedivRealDivconv2d_1/BiasAdd:output:0conv2d_1/Gelu/Cast/x:output:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/truedivГ
conv2d_1/Gelu/ErfErfconv2d_1/Gelu/truediv:z:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/Erfo
conv2d_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
conv2d_1/Gelu/add/xЯ
conv2d_1/Gelu/addAddV2conv2d_1/Gelu/add/x:output:0conv2d_1/Gelu/Erf:y:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/addЪ
conv2d_1/Gelu/mul_1Mulconv2d_1/Gelu/mul:z:0conv2d_1/Gelu/add:z:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/mul_1╖
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$batch_normalization_3/ReadVariableOp╜
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02(
&batch_normalization_3/ReadVariableOp_1ъ
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpЁ
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ф
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_1/Gelu/mul_1:z:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_3/FusedBatchNormV3Ы
dropout_1/IdentityIdentity*batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А2
dropout_1/Identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  2
flatten/ConstХ
flatten/ReshapeReshapedropout_1/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         А12
flatten/Reshapeж
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А1*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/MatMulд
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpб
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_1/Sigmoidо
IdentityIdentitydense_1/Sigmoid:y:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         ::::::::::::::2n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
ы
a
E__inference_reshape_layer_call_and_return_conditional_losses_11914555

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2
Reshape/shape/3║
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:         А2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А1:P L
(
_output_shapes
:         А1
 
_user_specified_nameinputs
к
л
8__inference_batch_normalization_3_layer_call_fn_11914953

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╗
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_119119312
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Ф

┴
/__inference_sequential_1_layer_call_fn_11912372
conv2d_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_119123412
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         
&
_user_specified_nameconv2d_input
фj
Я
J__inference_sequential_1_layer_call_and_return_conditional_losses_11914073

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource1
-batch_normalization_2_readvariableop_resource3
/batch_normalization_2_readvariableop_1_resourceB
>batch_normalization_2_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource1
-batch_normalization_3_readvariableop_resource3
/batch_normalization_3_readvariableop_1_resourceB
>batch_normalization_3_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityИв5batch_normalization_2/FusedBatchNormV3/ReadVariableOpв7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_2/ReadVariableOpв&batch_normalization_2/ReadVariableOp_1в5batch_normalization_3/FusedBatchNormV3/ReadVariableOpв7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_3/ReadVariableOpв&batch_normalization_3/ReadVariableOp_1вconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpк
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp╕
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d/Conv2Dб
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOpд
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d/BiasAddk
conv2d/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv2d/Gelu/mul/xШ
conv2d/Gelu/mulMulconv2d/Gelu/mul/x:output:0conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/mulm
conv2d/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
conv2d/Gelu/Cast/xе
conv2d/Gelu/truedivRealDivconv2d/BiasAdd:output:0conv2d/Gelu/Cast/x:output:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/truediv|
conv2d/Gelu/ErfErfconv2d/Gelu/truediv:z:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/Erfk
conv2d/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
conv2d/Gelu/add/xЦ
conv2d/Gelu/addAddV2conv2d/Gelu/add/x:output:0conv2d/Gelu/Erf:y:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/addС
conv2d/Gelu/mul_1Mulconv2d/Gelu/mul:z:0conv2d/Gelu/add:z:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/mul_1╢
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_2/ReadVariableOp╝
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_2/ReadVariableOp_1щ
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1▌
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d/Gelu/mul_1:z:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_2/FusedBatchNormV3s
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2
dropout/dropout/Const╖
dropout/dropout/MulMul*batch_normalization_2/FusedBatchNormV3:y:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/dropout/MulИ
dropout/dropout/ShapeShape*batch_normalization_2/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
dropout/dropout/Shape╘
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2 
dropout/dropout/GreaterEqual/yц
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/dropout/GreaterEqualЯ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/dropout/Castв
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/dropout/Mul_1▒
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02 
conv2d_1/Conv2D/ReadVariableOp╥
conv2d_1/Conv2DConv2Ddropout/dropout/Mul_1:z:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_1/Conv2Dи
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_1/BiasAdd/ReadVariableOpн
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_1/BiasAddo
conv2d_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv2d_1/Gelu/mul/xб
conv2d_1/Gelu/mulMulconv2d_1/Gelu/mul/x:output:0conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/mulq
conv2d_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
conv2d_1/Gelu/Cast/xо
conv2d_1/Gelu/truedivRealDivconv2d_1/BiasAdd:output:0conv2d_1/Gelu/Cast/x:output:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/truedivГ
conv2d_1/Gelu/ErfErfconv2d_1/Gelu/truediv:z:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/Erfo
conv2d_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
conv2d_1/Gelu/add/xЯ
conv2d_1/Gelu/addAddV2conv2d_1/Gelu/add/x:output:0conv2d_1/Gelu/Erf:y:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/addЪ
conv2d_1/Gelu/mul_1Mulconv2d_1/Gelu/mul:z:0conv2d_1/Gelu/add:z:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/mul_1╖
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$batch_normalization_3/ReadVariableOp╜
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02(
&batch_normalization_3/ReadVariableOp_1ъ
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpЁ
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ф
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_1/Gelu/mul_1:z:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_3/FusedBatchNormV3w
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2
dropout_1/dropout/Const╛
dropout_1/dropout/MulMul*batch_normalization_3/FusedBatchNormV3:y:0 dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout_1/dropout/MulМ
dropout_1/dropout/ShapeShape*batch_normalization_3/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape█
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЙ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2"
 dropout_1/dropout/GreaterEqual/yя
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2 
dropout_1/dropout/GreaterEqualж
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout_1/dropout/Castл
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout_1/dropout/Mul_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  2
flatten/ConstХ
flatten/ReshapeReshapedropout_1/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:         А12
flatten/Reshapeж
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А1*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/MatMulд
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpб
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_1/Sigmoidо
IdentityIdentitydense_1/Sigmoid:y:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         ::::::::::::::2n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
╥j
Я
J__inference_sequential_1_layer_call_and_return_conditional_losses_11914295

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource1
-batch_normalization_2_readvariableop_resource3
/batch_normalization_2_readvariableop_1_resourceB
>batch_normalization_2_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource1
-batch_normalization_3_readvariableop_resource3
/batch_normalization_3_readvariableop_1_resourceB
>batch_normalization_3_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityИв5batch_normalization_2/FusedBatchNormV3/ReadVariableOpв7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_2/ReadVariableOpв&batch_normalization_2/ReadVariableOp_1в5batch_normalization_3/FusedBatchNormV3/ReadVariableOpв7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_3/ReadVariableOpв&batch_normalization_3/ReadVariableOp_1вconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpк
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp╕
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d/Conv2Dб
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOpд
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d/BiasAddk
conv2d/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv2d/Gelu/mul/xШ
conv2d/Gelu/mulMulconv2d/Gelu/mul/x:output:0conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/mulm
conv2d/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
conv2d/Gelu/Cast/xе
conv2d/Gelu/truedivRealDivconv2d/BiasAdd:output:0conv2d/Gelu/Cast/x:output:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/truediv|
conv2d/Gelu/ErfErfconv2d/Gelu/truediv:z:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/Erfk
conv2d/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
conv2d/Gelu/add/xЦ
conv2d/Gelu/addAddV2conv2d/Gelu/add/x:output:0conv2d/Gelu/Erf:y:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/addС
conv2d/Gelu/mul_1Mulconv2d/Gelu/mul:z:0conv2d/Gelu/add:z:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/mul_1╢
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_2/ReadVariableOp╝
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_2/ReadVariableOp_1щ
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1▌
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d/Gelu/mul_1:z:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_2/FusedBatchNormV3s
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2
dropout/dropout/Const╖
dropout/dropout/MulMul*batch_normalization_2/FusedBatchNormV3:y:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/dropout/MulИ
dropout/dropout/ShapeShape*batch_normalization_2/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
dropout/dropout/Shape╘
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2 
dropout/dropout/GreaterEqual/yц
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/dropout/GreaterEqualЯ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/dropout/Castв
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/dropout/Mul_1▒
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02 
conv2d_1/Conv2D/ReadVariableOp╥
conv2d_1/Conv2DConv2Ddropout/dropout/Mul_1:z:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_1/Conv2Dи
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_1/BiasAdd/ReadVariableOpн
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_1/BiasAddo
conv2d_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv2d_1/Gelu/mul/xб
conv2d_1/Gelu/mulMulconv2d_1/Gelu/mul/x:output:0conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/mulq
conv2d_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
conv2d_1/Gelu/Cast/xо
conv2d_1/Gelu/truedivRealDivconv2d_1/BiasAdd:output:0conv2d_1/Gelu/Cast/x:output:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/truedivГ
conv2d_1/Gelu/ErfErfconv2d_1/Gelu/truediv:z:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/Erfo
conv2d_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
conv2d_1/Gelu/add/xЯ
conv2d_1/Gelu/addAddV2conv2d_1/Gelu/add/x:output:0conv2d_1/Gelu/Erf:y:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/addЪ
conv2d_1/Gelu/mul_1Mulconv2d_1/Gelu/mul:z:0conv2d_1/Gelu/add:z:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/mul_1╖
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$batch_normalization_3/ReadVariableOp╜
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02(
&batch_normalization_3/ReadVariableOp_1ъ
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpЁ
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ф
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_1/Gelu/mul_1:z:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_3/FusedBatchNormV3w
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2
dropout_1/dropout/Const╛
dropout_1/dropout/MulMul*batch_normalization_3/FusedBatchNormV3:y:0 dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout_1/dropout/MulМ
dropout_1/dropout/ShapeShape*batch_normalization_3/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape█
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЙ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2"
 dropout_1/dropout/GreaterEqual/yя
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2 
dropout_1/dropout/GreaterEqualж
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout_1/dropout/Castл
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout_1/dropout/Mul_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  2
flatten/ConstХ
flatten/ReshapeReshapedropout_1/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:         А12
flatten/Reshapeж
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А1*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/MatMulд
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpб
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_1/Sigmoidо
IdentityIdentitydense_1/Sigmoid:y:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         ::::::::::::::2n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
▐
л
8__inference_batch_normalization_2_layer_call_fn_11914762

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_119119972
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┐
a
E__inference_flatten_layer_call_and_return_conditional_losses_11914986

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А12	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А12

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ль
╤
J__inference_sequential_2_layer_call_and_return_conditional_losses_11913386

inputs3
/sequential_dense_matmul_readvariableop_resource4
0sequential_dense_biasadd_readvariableop_resource;
7sequential_batch_normalization_assignmovingavg_11913207=
9sequential_batch_normalization_assignmovingavg_1_11913213H
Dsequential_batch_normalization_batchnorm_mul_readvariableop_resourceD
@sequential_batch_normalization_batchnorm_readvariableop_resourceH
Dsequential_conv2d_transpose_conv2d_transpose_readvariableop_resource?
;sequential_conv2d_transpose_biasadd_readvariableop_resource<
8sequential_batch_normalization_1_readvariableop_resource>
:sequential_batch_normalization_1_readvariableop_1_resourceM
Isequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resourceO
Ksequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceJ
Fsequential_conv2d_transpose_1_conv2d_transpose_readvariableop_resourceA
=sequential_conv2d_transpose_1_biasadd_readvariableop_resource6
2sequential_1_conv2d_conv2d_readvariableop_resource7
3sequential_1_conv2d_biasadd_readvariableop_resource>
:sequential_1_batch_normalization_2_readvariableop_resource@
<sequential_1_batch_normalization_2_readvariableop_1_resourceO
Ksequential_1_batch_normalization_2_fusedbatchnormv3_readvariableop_resourceQ
Msequential_1_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource8
4sequential_1_conv2d_1_conv2d_readvariableop_resource9
5sequential_1_conv2d_1_biasadd_readvariableop_resource>
:sequential_1_batch_normalization_3_readvariableop_resource@
<sequential_1_batch_normalization_3_readvariableop_1_resourceO
Ksequential_1_batch_normalization_3_fusedbatchnormv3_readvariableop_resourceQ
Msequential_1_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource7
3sequential_1_dense_1_matmul_readvariableop_resource8
4sequential_1_dense_1_biasadd_readvariableop_resource
identityИвBsequential/batch_normalization/AssignMovingAvg/AssignSubVariableOpв=sequential/batch_normalization/AssignMovingAvg/ReadVariableOpвDsequential/batch_normalization/AssignMovingAvg_1/AssignSubVariableOpв?sequential/batch_normalization/AssignMovingAvg_1/ReadVariableOpв7sequential/batch_normalization/batchnorm/ReadVariableOpв;sequential/batch_normalization/batchnorm/mul/ReadVariableOpв/sequential/batch_normalization_1/AssignNewValueв1sequential/batch_normalization_1/AssignNewValue_1в@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpвBsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в/sequential/batch_normalization_1/ReadVariableOpв1sequential/batch_normalization_1/ReadVariableOp_1в2sequential/conv2d_transpose/BiasAdd/ReadVariableOpв;sequential/conv2d_transpose/conv2d_transpose/ReadVariableOpв4sequential/conv2d_transpose_1/BiasAdd/ReadVariableOpв=sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOpв'sequential/dense/BiasAdd/ReadVariableOpв&sequential/dense/MatMul/ReadVariableOpвBsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpвDsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1в1sequential_1/batch_normalization_2/ReadVariableOpв3sequential_1/batch_normalization_2/ReadVariableOp_1вBsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOpвDsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1в1sequential_1/batch_normalization_3/ReadVariableOpв3sequential_1/batch_normalization_3/ReadVariableOp_1в*sequential_1/conv2d/BiasAdd/ReadVariableOpв)sequential_1/conv2d/Conv2D/ReadVariableOpв,sequential_1/conv2d_1/BiasAdd/ReadVariableOpв+sequential_1/conv2d_1/Conv2D/ReadVariableOpв+sequential_1/dense_1/BiasAdd/ReadVariableOpв*sequential_1/dense_1/MatMul/ReadVariableOp┬
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА1*
dtype02(
&sequential/dense/MatMul/ReadVariableOpз
sequential/dense/MatMulMatMulinputs.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А12
sequential/dense/MatMul└
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:А1*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp╞
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А12
sequential/dense/BiasAdd
sequential/dense/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sequential/dense/Gelu/mul/x╣
sequential/dense/Gelu/mulMul$sequential/dense/Gelu/mul/x:output:0!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         А12
sequential/dense/Gelu/mulБ
sequential/dense/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
sequential/dense/Gelu/Cast/x╞
sequential/dense/Gelu/truedivRealDiv!sequential/dense/BiasAdd:output:0%sequential/dense/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:         А12
sequential/dense/Gelu/truedivУ
sequential/dense/Gelu/ErfErf!sequential/dense/Gelu/truediv:z:0*
T0*(
_output_shapes
:         А12
sequential/dense/Gelu/Erf
sequential/dense/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sequential/dense/Gelu/add/x╖
sequential/dense/Gelu/addAddV2$sequential/dense/Gelu/add/x:output:0sequential/dense/Gelu/Erf:y:0*
T0*(
_output_shapes
:         А12
sequential/dense/Gelu/add▓
sequential/dense/Gelu/mul_1Mulsequential/dense/Gelu/mul:z:0sequential/dense/Gelu/add:z:0*
T0*(
_output_shapes
:         А12
sequential/dense/Gelu/mul_1╚
=sequential/batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2?
=sequential/batch_normalization/moments/mean/reduction_indicesЖ
+sequential/batch_normalization/moments/meanMeansequential/dense/Gelu/mul_1:z:0Fsequential/batch_normalization/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А1*
	keep_dims(2-
+sequential/batch_normalization/moments/mean┌
3sequential/batch_normalization/moments/StopGradientStopGradient4sequential/batch_normalization/moments/mean:output:0*
T0*
_output_shapes
:	А125
3sequential/batch_normalization/moments/StopGradientЫ
8sequential/batch_normalization/moments/SquaredDifferenceSquaredDifferencesequential/dense/Gelu/mul_1:z:0<sequential/batch_normalization/moments/StopGradient:output:0*
T0*(
_output_shapes
:         А12:
8sequential/batch_normalization/moments/SquaredDifference╨
Asequential/batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2C
Asequential/batch_normalization/moments/variance/reduction_indicesп
/sequential/batch_normalization/moments/varianceMean<sequential/batch_normalization/moments/SquaredDifference:z:0Jsequential/batch_normalization/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А1*
	keep_dims(21
/sequential/batch_normalization/moments/variance▐
.sequential/batch_normalization/moments/SqueezeSqueeze4sequential/batch_normalization/moments/mean:output:0*
T0*
_output_shapes	
:А1*
squeeze_dims
 20
.sequential/batch_normalization/moments/Squeezeц
0sequential/batch_normalization/moments/Squeeze_1Squeeze8sequential/batch_normalization/moments/variance:output:0*
T0*
_output_shapes	
:А1*
squeeze_dims
 22
0sequential/batch_normalization/moments/Squeeze_1л
4sequential/batch_normalization/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*J
_class@
><loc:@sequential/batch_normalization/AssignMovingAvg/11913207*
_output_shapes
: *
dtype0*
valueB
 *
╫#<26
4sequential/batch_normalization/AssignMovingAvg/decayє
=sequential/batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp7sequential_batch_normalization_assignmovingavg_11913207*
_output_shapes	
:А1*
dtype02?
=sequential/batch_normalization/AssignMovingAvg/ReadVariableOpП
2sequential/batch_normalization/AssignMovingAvg/subSubEsequential/batch_normalization/AssignMovingAvg/ReadVariableOp:value:07sequential/batch_normalization/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*J
_class@
><loc:@sequential/batch_normalization/AssignMovingAvg/11913207*
_output_shapes	
:А124
2sequential/batch_normalization/AssignMovingAvg/subЖ
2sequential/batch_normalization/AssignMovingAvg/mulMul6sequential/batch_normalization/AssignMovingAvg/sub:z:0=sequential/batch_normalization/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*J
_class@
><loc:@sequential/batch_normalization/AssignMovingAvg/11913207*
_output_shapes	
:А124
2sequential/batch_normalization/AssignMovingAvg/mulэ
Bsequential/batch_normalization/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp7sequential_batch_normalization_assignmovingavg_119132076sequential/batch_normalization/AssignMovingAvg/mul:z:0>^sequential/batch_normalization/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*J
_class@
><loc:@sequential/batch_normalization/AssignMovingAvg/11913207*
_output_shapes
 *
dtype02D
Bsequential/batch_normalization/AssignMovingAvg/AssignSubVariableOp▒
6sequential/batch_normalization/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*L
_classB
@>loc:@sequential/batch_normalization/AssignMovingAvg_1/11913213*
_output_shapes
: *
dtype0*
valueB
 *
╫#<28
6sequential/batch_normalization/AssignMovingAvg_1/decay∙
?sequential/batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp9sequential_batch_normalization_assignmovingavg_1_11913213*
_output_shapes	
:А1*
dtype02A
?sequential/batch_normalization/AssignMovingAvg_1/ReadVariableOpЩ
4sequential/batch_normalization/AssignMovingAvg_1/subSubGsequential/batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:09sequential/batch_normalization/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*L
_classB
@>loc:@sequential/batch_normalization/AssignMovingAvg_1/11913213*
_output_shapes	
:А126
4sequential/batch_normalization/AssignMovingAvg_1/subР
4sequential/batch_normalization/AssignMovingAvg_1/mulMul8sequential/batch_normalization/AssignMovingAvg_1/sub:z:0?sequential/batch_normalization/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*L
_classB
@>loc:@sequential/batch_normalization/AssignMovingAvg_1/11913213*
_output_shapes	
:А126
4sequential/batch_normalization/AssignMovingAvg_1/mul∙
Dsequential/batch_normalization/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp9sequential_batch_normalization_assignmovingavg_1_119132138sequential/batch_normalization/AssignMovingAvg_1/mul:z:0@^sequential/batch_normalization/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*L
_classB
@>loc:@sequential/batch_normalization/AssignMovingAvg_1/11913213*
_output_shapes
 *
dtype02F
Dsequential/batch_normalization/AssignMovingAvg_1/AssignSubVariableOpе
.sequential/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:20
.sequential/batch_normalization/batchnorm/add/y 
,sequential/batch_normalization/batchnorm/addAddV29sequential/batch_normalization/moments/Squeeze_1:output:07sequential/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А12.
,sequential/batch_normalization/batchnorm/add┴
.sequential/batch_normalization/batchnorm/RsqrtRsqrt0sequential/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:А120
.sequential/batch_normalization/batchnorm/Rsqrt№
;sequential/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpDsequential_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А1*
dtype02=
;sequential/batch_normalization/batchnorm/mul/ReadVariableOpВ
,sequential/batch_normalization/batchnorm/mulMul2sequential/batch_normalization/batchnorm/Rsqrt:y:0Csequential/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А12.
,sequential/batch_normalization/batchnorm/mulэ
.sequential/batch_normalization/batchnorm/mul_1Mulsequential/dense/Gelu/mul_1:z:00sequential/batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А120
.sequential/batch_normalization/batchnorm/mul_1°
.sequential/batch_normalization/batchnorm/mul_2Mul7sequential/batch_normalization/moments/Squeeze:output:00sequential/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:А120
.sequential/batch_normalization/batchnorm/mul_2Ё
7sequential/batch_normalization/batchnorm/ReadVariableOpReadVariableOp@sequential_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:А1*
dtype029
7sequential/batch_normalization/batchnorm/ReadVariableOp■
,sequential/batch_normalization/batchnorm/subSub?sequential/batch_normalization/batchnorm/ReadVariableOp:value:02sequential/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А12.
,sequential/batch_normalization/batchnorm/subВ
.sequential/batch_normalization/batchnorm/add_1AddV22sequential/batch_normalization/batchnorm/mul_1:z:00sequential/batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А120
.sequential/batch_normalization/batchnorm/add_1Ц
sequential/reshape/ShapeShape2sequential/batch_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
sequential/reshape/ShapeЪ
&sequential/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential/reshape/strided_slice/stackЮ
(sequential/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/reshape/strided_slice/stack_1Ю
(sequential/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/reshape/strided_slice/stack_2╘
 sequential/reshape/strided_sliceStridedSlice!sequential/reshape/Shape:output:0/sequential/reshape/strided_slice/stack:output:01sequential/reshape/strided_slice/stack_1:output:01sequential/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential/reshape/strided_sliceК
"sequential/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"sequential/reshape/Reshape/shape/1К
"sequential/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"sequential/reshape/Reshape/shape/2Л
"sequential/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2$
"sequential/reshape/Reshape/shape/3м
 sequential/reshape/Reshape/shapePack)sequential/reshape/strided_slice:output:0+sequential/reshape/Reshape/shape/1:output:0+sequential/reshape/Reshape/shape/2:output:0+sequential/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2"
 sequential/reshape/Reshape/shape▌
sequential/reshape/ReshapeReshape2sequential/batch_normalization/batchnorm/add_1:z:0)sequential/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:         А2
sequential/reshape/ReshapeЩ
!sequential/conv2d_transpose/ShapeShape#sequential/reshape/Reshape:output:0*
T0*
_output_shapes
:2#
!sequential/conv2d_transpose/Shapeм
/sequential/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential/conv2d_transpose/strided_slice/stack░
1sequential/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential/conv2d_transpose/strided_slice/stack_1░
1sequential/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential/conv2d_transpose/strided_slice/stack_2К
)sequential/conv2d_transpose/strided_sliceStridedSlice*sequential/conv2d_transpose/Shape:output:08sequential/conv2d_transpose/strided_slice/stack:output:0:sequential/conv2d_transpose/strided_slice/stack_1:output:0:sequential/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)sequential/conv2d_transpose/strided_sliceМ
#sequential/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/conv2d_transpose/stack/1М
#sequential/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/conv2d_transpose/stack/2М
#sequential/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2%
#sequential/conv2d_transpose/stack/3║
!sequential/conv2d_transpose/stackPack2sequential/conv2d_transpose/strided_slice:output:0,sequential/conv2d_transpose/stack/1:output:0,sequential/conv2d_transpose/stack/2:output:0,sequential/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!sequential/conv2d_transpose/stack░
1sequential/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential/conv2d_transpose/strided_slice_1/stack┤
3sequential/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential/conv2d_transpose/strided_slice_1/stack_1┤
3sequential/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential/conv2d_transpose/strided_slice_1/stack_2Ф
+sequential/conv2d_transpose/strided_slice_1StridedSlice*sequential/conv2d_transpose/stack:output:0:sequential/conv2d_transpose/strided_slice_1/stack:output:0<sequential/conv2d_transpose/strided_slice_1/stack_1:output:0<sequential/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential/conv2d_transpose/strided_slice_1И
;sequential/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpDsequential_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype02=
;sequential/conv2d_transpose/conv2d_transpose/ReadVariableOpы
,sequential/conv2d_transpose/conv2d_transposeConv2DBackpropInput*sequential/conv2d_transpose/stack:output:0Csequential/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0#sequential/reshape/Reshape:output:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2.
,sequential/conv2d_transpose/conv2d_transposeр
2sequential/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp;sequential_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype024
2sequential/conv2d_transpose/BiasAdd/ReadVariableOpВ
#sequential/conv2d_transpose/BiasAddBiasAdd5sequential/conv2d_transpose/conv2d_transpose:output:0:sequential/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2%
#sequential/conv2d_transpose/BiasAddХ
&sequential/conv2d_transpose/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&sequential/conv2d_transpose/Gelu/mul/xь
$sequential/conv2d_transpose/Gelu/mulMul/sequential/conv2d_transpose/Gelu/mul/x:output:0,sequential/conv2d_transpose/BiasAdd:output:0*
T0*/
_output_shapes
:         @2&
$sequential/conv2d_transpose/Gelu/mulЧ
'sequential/conv2d_transpose/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2)
'sequential/conv2d_transpose/Gelu/Cast/x∙
(sequential/conv2d_transpose/Gelu/truedivRealDiv,sequential/conv2d_transpose/BiasAdd:output:00sequential/conv2d_transpose/Gelu/Cast/x:output:0*
T0*/
_output_shapes
:         @2*
(sequential/conv2d_transpose/Gelu/truediv╗
$sequential/conv2d_transpose/Gelu/ErfErf,sequential/conv2d_transpose/Gelu/truediv:z:0*
T0*/
_output_shapes
:         @2&
$sequential/conv2d_transpose/Gelu/ErfХ
&sequential/conv2d_transpose/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2(
&sequential/conv2d_transpose/Gelu/add/xъ
$sequential/conv2d_transpose/Gelu/addAddV2/sequential/conv2d_transpose/Gelu/add/x:output:0(sequential/conv2d_transpose/Gelu/Erf:y:0*
T0*/
_output_shapes
:         @2&
$sequential/conv2d_transpose/Gelu/addх
&sequential/conv2d_transpose/Gelu/mul_1Mul(sequential/conv2d_transpose/Gelu/mul:z:0(sequential/conv2d_transpose/Gelu/add:z:0*
T0*/
_output_shapes
:         @2(
&sequential/conv2d_transpose/Gelu/mul_1╫
/sequential/batch_normalization_1/ReadVariableOpReadVariableOp8sequential_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential/batch_normalization_1/ReadVariableOp▌
1sequential/batch_normalization_1/ReadVariableOp_1ReadVariableOp:sequential_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype023
1sequential/batch_normalization_1/ReadVariableOp_1К
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02B
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpР
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02D
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1┬
1sequential/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3*sequential/conv2d_transpose/Gelu/mul_1:z:07sequential/batch_normalization_1/ReadVariableOp:value:09sequential/batch_normalization_1/ReadVariableOp_1:value:0Hsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<23
1sequential/batch_normalization_1/FusedBatchNormV3є
/sequential/batch_normalization_1/AssignNewValueAssignVariableOpIsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource>sequential/batch_normalization_1/FusedBatchNormV3:batch_mean:0A^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*\
_classR
PNloc:@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype021
/sequential/batch_normalization_1/AssignNewValueБ
1sequential/batch_normalization_1/AssignNewValue_1AssignVariableOpKsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceBsequential/batch_normalization_1/FusedBatchNormV3:batch_variance:0C^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*^
_classT
RPloc:@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype023
1sequential/batch_normalization_1/AssignNewValue_1п
#sequential/conv2d_transpose_1/ShapeShape5sequential/batch_normalization_1/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2%
#sequential/conv2d_transpose_1/Shape░
1sequential/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential/conv2d_transpose_1/strided_slice/stack┤
3sequential/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential/conv2d_transpose_1/strided_slice/stack_1┤
3sequential/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential/conv2d_transpose_1/strided_slice/stack_2Ц
+sequential/conv2d_transpose_1/strided_sliceStridedSlice,sequential/conv2d_transpose_1/Shape:output:0:sequential/conv2d_transpose_1/strided_slice/stack:output:0<sequential/conv2d_transpose_1/strided_slice/stack_1:output:0<sequential/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential/conv2d_transpose_1/strided_sliceР
%sequential/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/conv2d_transpose_1/stack/1Р
%sequential/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/conv2d_transpose_1/stack/2Р
%sequential/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/conv2d_transpose_1/stack/3╞
#sequential/conv2d_transpose_1/stackPack4sequential/conv2d_transpose_1/strided_slice:output:0.sequential/conv2d_transpose_1/stack/1:output:0.sequential/conv2d_transpose_1/stack/2:output:0.sequential/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential/conv2d_transpose_1/stack┤
3sequential/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential/conv2d_transpose_1/strided_slice_1/stack╕
5sequential/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential/conv2d_transpose_1/strided_slice_1/stack_1╕
5sequential/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential/conv2d_transpose_1/strided_slice_1/stack_2а
-sequential/conv2d_transpose_1/strided_slice_1StridedSlice,sequential/conv2d_transpose_1/stack:output:0<sequential/conv2d_transpose_1/strided_slice_1/stack:output:0>sequential/conv2d_transpose_1/strided_slice_1/stack_1:output:0>sequential/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential/conv2d_transpose_1/strided_slice_1Н
=sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02?
=sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOpЕ
.sequential/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput,sequential/conv2d_transpose_1/stack:output:0Esequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:05sequential/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
20
.sequential/conv2d_transpose_1/conv2d_transposeц
4sequential/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp=sequential_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4sequential/conv2d_transpose_1/BiasAdd/ReadVariableOpК
%sequential/conv2d_transpose_1/BiasAddBiasAdd7sequential/conv2d_transpose_1/conv2d_transpose:output:0<sequential/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2'
%sequential/conv2d_transpose_1/BiasAdd├
%sequential/conv2d_transpose_1/SigmoidSigmoid.sequential/conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:         2'
%sequential/conv2d_transpose_1/Sigmoid╤
)sequential_1/conv2d/Conv2D/ReadVariableOpReadVariableOp2sequential_1_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02+
)sequential_1/conv2d/Conv2D/ReadVariableOpВ
sequential_1/conv2d/Conv2DConv2D)sequential/conv2d_transpose_1/Sigmoid:y:01sequential_1/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
sequential_1/conv2d/Conv2D╚
*sequential_1/conv2d/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential_1/conv2d/BiasAdd/ReadVariableOp╪
sequential_1/conv2d/BiasAddBiasAdd#sequential_1/conv2d/Conv2D:output:02sequential_1/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
sequential_1/conv2d/BiasAddЕ
sequential_1/conv2d/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
sequential_1/conv2d/Gelu/mul/x╠
sequential_1/conv2d/Gelu/mulMul'sequential_1/conv2d/Gelu/mul/x:output:0$sequential_1/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
sequential_1/conv2d/Gelu/mulЗ
sequential_1/conv2d/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2!
sequential_1/conv2d/Gelu/Cast/x┘
 sequential_1/conv2d/Gelu/truedivRealDiv$sequential_1/conv2d/BiasAdd:output:0(sequential_1/conv2d/Gelu/Cast/x:output:0*
T0*/
_output_shapes
:         @2"
 sequential_1/conv2d/Gelu/truedivг
sequential_1/conv2d/Gelu/ErfErf$sequential_1/conv2d/Gelu/truediv:z:0*
T0*/
_output_shapes
:         @2
sequential_1/conv2d/Gelu/ErfЕ
sequential_1/conv2d/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2 
sequential_1/conv2d/Gelu/add/x╩
sequential_1/conv2d/Gelu/addAddV2'sequential_1/conv2d/Gelu/add/x:output:0 sequential_1/conv2d/Gelu/Erf:y:0*
T0*/
_output_shapes
:         @2
sequential_1/conv2d/Gelu/add┼
sequential_1/conv2d/Gelu/mul_1Mul sequential_1/conv2d/Gelu/mul:z:0 sequential_1/conv2d/Gelu/add:z:0*
T0*/
_output_shapes
:         @2 
sequential_1/conv2d/Gelu/mul_1▌
1sequential_1/batch_normalization_2/ReadVariableOpReadVariableOp:sequential_1_batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype023
1sequential_1/batch_normalization_2/ReadVariableOpу
3sequential_1/batch_normalization_2/ReadVariableOp_1ReadVariableOp<sequential_1_batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype025
3sequential_1/batch_normalization_2/ReadVariableOp_1Р
Bsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_1_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02D
Bsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpЦ
Dsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_1_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02F
Dsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1╕
3sequential_1/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3"sequential_1/conv2d/Gelu/mul_1:z:09sequential_1/batch_normalization_2/ReadVariableOp:value:0;sequential_1/batch_normalization_2/ReadVariableOp_1:value:0Jsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 25
3sequential_1/batch_normalization_2/FusedBatchNormV3Н
"sequential_1/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2$
"sequential_1/dropout/dropout/Constы
 sequential_1/dropout/dropout/MulMul7sequential_1/batch_normalization_2/FusedBatchNormV3:y:0+sequential_1/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:         @2"
 sequential_1/dropout/dropout/Mulп
"sequential_1/dropout/dropout/ShapeShape7sequential_1/batch_normalization_2/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2$
"sequential_1/dropout/dropout/Shape√
9sequential_1/dropout/dropout/random_uniform/RandomUniformRandomUniform+sequential_1/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02;
9sequential_1/dropout/dropout/random_uniform/RandomUniformЯ
+sequential_1/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2-
+sequential_1/dropout/dropout/GreaterEqual/yЪ
)sequential_1/dropout/dropout/GreaterEqualGreaterEqualBsequential_1/dropout/dropout/random_uniform/RandomUniform:output:04sequential_1/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2+
)sequential_1/dropout/dropout/GreaterEqual╞
!sequential_1/dropout/dropout/CastCast-sequential_1/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2#
!sequential_1/dropout/dropout/Cast╓
"sequential_1/dropout/dropout/Mul_1Mul$sequential_1/dropout/dropout/Mul:z:0%sequential_1/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2$
"sequential_1/dropout/dropout/Mul_1╪
+sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02-
+sequential_1/conv2d_1/Conv2D/ReadVariableOpЖ
sequential_1/conv2d_1/Conv2DConv2D&sequential_1/dropout/dropout/Mul_1:z:03sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
sequential_1/conv2d_1/Conv2D╧
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpс
sequential_1/conv2d_1/BiasAddBiasAdd%sequential_1/conv2d_1/Conv2D:output:04sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
sequential_1/conv2d_1/BiasAddЙ
 sequential_1/conv2d_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 sequential_1/conv2d_1/Gelu/mul/x╒
sequential_1/conv2d_1/Gelu/mulMul)sequential_1/conv2d_1/Gelu/mul/x:output:0&sequential_1/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:         А2 
sequential_1/conv2d_1/Gelu/mulЛ
!sequential_1/conv2d_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2#
!sequential_1/conv2d_1/Gelu/Cast/xт
"sequential_1/conv2d_1/Gelu/truedivRealDiv&sequential_1/conv2d_1/BiasAdd:output:0*sequential_1/conv2d_1/Gelu/Cast/x:output:0*
T0*0
_output_shapes
:         А2$
"sequential_1/conv2d_1/Gelu/truedivк
sequential_1/conv2d_1/Gelu/ErfErf&sequential_1/conv2d_1/Gelu/truediv:z:0*
T0*0
_output_shapes
:         А2 
sequential_1/conv2d_1/Gelu/ErfЙ
 sequential_1/conv2d_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2"
 sequential_1/conv2d_1/Gelu/add/x╙
sequential_1/conv2d_1/Gelu/addAddV2)sequential_1/conv2d_1/Gelu/add/x:output:0"sequential_1/conv2d_1/Gelu/Erf:y:0*
T0*0
_output_shapes
:         А2 
sequential_1/conv2d_1/Gelu/add╬
 sequential_1/conv2d_1/Gelu/mul_1Mul"sequential_1/conv2d_1/Gelu/mul:z:0"sequential_1/conv2d_1/Gelu/add:z:0*
T0*0
_output_shapes
:         А2"
 sequential_1/conv2d_1/Gelu/mul_1▐
1sequential_1/batch_normalization_3/ReadVariableOpReadVariableOp:sequential_1_batch_normalization_3_readvariableop_resource*
_output_shapes	
:А*
dtype023
1sequential_1/batch_normalization_3/ReadVariableOpф
3sequential_1/batch_normalization_3/ReadVariableOp_1ReadVariableOp<sequential_1_batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype025
3sequential_1/batch_normalization_3/ReadVariableOp_1С
Bsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_1_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02D
Bsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOpЧ
Dsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_1_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02F
Dsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1┐
3sequential_1/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3$sequential_1/conv2d_1/Gelu/mul_1:z:09sequential_1/batch_normalization_3/ReadVariableOp:value:0;sequential_1/batch_normalization_3/ReadVariableOp_1:value:0Jsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 25
3sequential_1/batch_normalization_3/FusedBatchNormV3С
$sequential_1/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2&
$sequential_1/dropout_1/dropout/ConstЄ
"sequential_1/dropout_1/dropout/MulMul7sequential_1/batch_normalization_3/FusedBatchNormV3:y:0-sequential_1/dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:         А2$
"sequential_1/dropout_1/dropout/Mul│
$sequential_1/dropout_1/dropout/ShapeShape7sequential_1/batch_normalization_3/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2&
$sequential_1/dropout_1/dropout/ShapeВ
;sequential_1/dropout_1/dropout/random_uniform/RandomUniformRandomUniform-sequential_1/dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02=
;sequential_1/dropout_1/dropout/random_uniform/RandomUniformг
-sequential_1/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2/
-sequential_1/dropout_1/dropout/GreaterEqual/yг
+sequential_1/dropout_1/dropout/GreaterEqualGreaterEqualDsequential_1/dropout_1/dropout/random_uniform/RandomUniform:output:06sequential_1/dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2-
+sequential_1/dropout_1/dropout/GreaterEqual═
#sequential_1/dropout_1/dropout/CastCast/sequential_1/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2%
#sequential_1/dropout_1/dropout/Cast▀
$sequential_1/dropout_1/dropout/Mul_1Mul&sequential_1/dropout_1/dropout/Mul:z:0'sequential_1/dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2&
$sequential_1/dropout_1/dropout/Mul_1Й
sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  2
sequential_1/flatten/Const╔
sequential_1/flatten/ReshapeReshape(sequential_1/dropout_1/dropout/Mul_1:z:0#sequential_1/flatten/Const:output:0*
T0*(
_output_shapes
:         А12
sequential_1/flatten/Reshape═
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	А1*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp╤
sequential_1/dense_1/MatMulMatMul%sequential_1/flatten/Reshape:output:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_1/dense_1/MatMul╦
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp╒
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_1/dense_1/BiasAddа
sequential_1/dense_1/SigmoidSigmoid%sequential_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2
sequential_1/dense_1/SigmoidИ
IdentityIdentity sequential_1/dense_1/Sigmoid:y:0C^sequential/batch_normalization/AssignMovingAvg/AssignSubVariableOp>^sequential/batch_normalization/AssignMovingAvg/ReadVariableOpE^sequential/batch_normalization/AssignMovingAvg_1/AssignSubVariableOp@^sequential/batch_normalization/AssignMovingAvg_1/ReadVariableOp8^sequential/batch_normalization/batchnorm/ReadVariableOp<^sequential/batch_normalization/batchnorm/mul/ReadVariableOp0^sequential/batch_normalization_1/AssignNewValue2^sequential/batch_normalization_1/AssignNewValue_1A^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_1/ReadVariableOp2^sequential/batch_normalization_1/ReadVariableOp_13^sequential/conv2d_transpose/BiasAdd/ReadVariableOp<^sequential/conv2d_transpose/conv2d_transpose/ReadVariableOp5^sequential/conv2d_transpose_1/BiasAdd/ReadVariableOp>^sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOpC^sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpE^sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12^sequential_1/batch_normalization_2/ReadVariableOp4^sequential_1/batch_normalization_2/ReadVariableOp_1C^sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOpE^sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12^sequential_1/batch_normalization_3/ReadVariableOp4^sequential_1/batch_normalization_3/ReadVariableOp_1+^sequential_1/conv2d/BiasAdd/ReadVariableOp*^sequential_1/conv2d/Conv2D/ReadVariableOp-^sequential_1/conv2d_1/BiasAdd/ReadVariableOp,^sequential_1/conv2d_1/Conv2D/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:         А::::::::::::::::::::::::::::2И
Bsequential/batch_normalization/AssignMovingAvg/AssignSubVariableOpBsequential/batch_normalization/AssignMovingAvg/AssignSubVariableOp2~
=sequential/batch_normalization/AssignMovingAvg/ReadVariableOp=sequential/batch_normalization/AssignMovingAvg/ReadVariableOp2М
Dsequential/batch_normalization/AssignMovingAvg_1/AssignSubVariableOpDsequential/batch_normalization/AssignMovingAvg_1/AssignSubVariableOp2В
?sequential/batch_normalization/AssignMovingAvg_1/ReadVariableOp?sequential/batch_normalization/AssignMovingAvg_1/ReadVariableOp2r
7sequential/batch_normalization/batchnorm/ReadVariableOp7sequential/batch_normalization/batchnorm/ReadVariableOp2z
;sequential/batch_normalization/batchnorm/mul/ReadVariableOp;sequential/batch_normalization/batchnorm/mul/ReadVariableOp2b
/sequential/batch_normalization_1/AssignNewValue/sequential/batch_normalization_1/AssignNewValue2f
1sequential/batch_normalization_1/AssignNewValue_11sequential/batch_normalization_1/AssignNewValue_12Д
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2И
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12b
/sequential/batch_normalization_1/ReadVariableOp/sequential/batch_normalization_1/ReadVariableOp2f
1sequential/batch_normalization_1/ReadVariableOp_11sequential/batch_normalization_1/ReadVariableOp_12h
2sequential/conv2d_transpose/BiasAdd/ReadVariableOp2sequential/conv2d_transpose/BiasAdd/ReadVariableOp2z
;sequential/conv2d_transpose/conv2d_transpose/ReadVariableOp;sequential/conv2d_transpose/conv2d_transpose/ReadVariableOp2l
4sequential/conv2d_transpose_1/BiasAdd/ReadVariableOp4sequential/conv2d_transpose_1/BiasAdd/ReadVariableOp2~
=sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOp=sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2И
Bsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpBsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2М
Dsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Dsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12f
1sequential_1/batch_normalization_2/ReadVariableOp1sequential_1/batch_normalization_2/ReadVariableOp2j
3sequential_1/batch_normalization_2/ReadVariableOp_13sequential_1/batch_normalization_2/ReadVariableOp_12И
Bsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOpBsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2М
Dsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Dsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12f
1sequential_1/batch_normalization_3/ReadVariableOp1sequential_1/batch_normalization_3/ReadVariableOp2j
3sequential_1/batch_normalization_3/ReadVariableOp_13sequential_1/batch_normalization_3/ReadVariableOp_12X
*sequential_1/conv2d/BiasAdd/ReadVariableOp*sequential_1/conv2d/BiasAdd/ReadVariableOp2V
)sequential_1/conv2d/Conv2D/ReadVariableOp)sequential_1/conv2d/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp,sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_1/Conv2D/ReadVariableOp+sequential_1/conv2d_1/Conv2D/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ф

┴
/__inference_sequential_1_layer_call_fn_11912445
conv2d_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_119124142
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         
&
_user_specified_nameconv2d_input
√
Ў
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11912015

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╓W
Я
J__inference_sequential_1_layer_call_and_return_conditional_losses_11914144

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource1
-batch_normalization_2_readvariableop_resource3
/batch_normalization_2_readvariableop_1_resourceB
>batch_normalization_2_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource1
-batch_normalization_3_readvariableop_resource3
/batch_normalization_3_readvariableop_1_resourceB
>batch_normalization_3_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityИв5batch_normalization_2/FusedBatchNormV3/ReadVariableOpв7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_2/ReadVariableOpв&batch_normalization_2/ReadVariableOp_1в5batch_normalization_3/FusedBatchNormV3/ReadVariableOpв7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_3/ReadVariableOpв&batch_normalization_3/ReadVariableOp_1вconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpк
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp╕
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d/Conv2Dб
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOpд
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d/BiasAddk
conv2d/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv2d/Gelu/mul/xШ
conv2d/Gelu/mulMulconv2d/Gelu/mul/x:output:0conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/mulm
conv2d/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
conv2d/Gelu/Cast/xе
conv2d/Gelu/truedivRealDivconv2d/BiasAdd:output:0conv2d/Gelu/Cast/x:output:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/truediv|
conv2d/Gelu/ErfErfconv2d/Gelu/truediv:z:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/Erfk
conv2d/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
conv2d/Gelu/add/xЦ
conv2d/Gelu/addAddV2conv2d/Gelu/add/x:output:0conv2d/Gelu/Erf:y:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/addС
conv2d/Gelu/mul_1Mulconv2d/Gelu/mul:z:0conv2d/Gelu/add:z:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/mul_1╢
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_2/ReadVariableOp╝
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_2/ReadVariableOp_1щ
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1▌
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d/Gelu/mul_1:z:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_2/FusedBatchNormV3Ц
dropout/IdentityIdentity*batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @2
dropout/Identity▒
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02 
conv2d_1/Conv2D/ReadVariableOp╥
conv2d_1/Conv2DConv2Ddropout/Identity:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_1/Conv2Dи
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_1/BiasAdd/ReadVariableOpн
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_1/BiasAddo
conv2d_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv2d_1/Gelu/mul/xб
conv2d_1/Gelu/mulMulconv2d_1/Gelu/mul/x:output:0conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/mulq
conv2d_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
conv2d_1/Gelu/Cast/xо
conv2d_1/Gelu/truedivRealDivconv2d_1/BiasAdd:output:0conv2d_1/Gelu/Cast/x:output:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/truedivГ
conv2d_1/Gelu/ErfErfconv2d_1/Gelu/truediv:z:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/Erfo
conv2d_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
conv2d_1/Gelu/add/xЯ
conv2d_1/Gelu/addAddV2conv2d_1/Gelu/add/x:output:0conv2d_1/Gelu/Erf:y:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/addЪ
conv2d_1/Gelu/mul_1Mulconv2d_1/Gelu/mul:z:0conv2d_1/Gelu/add:z:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/mul_1╖
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$batch_normalization_3/ReadVariableOp╜
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02(
&batch_normalization_3/ReadVariableOp_1ъ
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpЁ
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ф
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_1/Gelu/mul_1:z:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_3/FusedBatchNormV3Ы
dropout_1/IdentityIdentity*batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А2
dropout_1/Identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  2
flatten/ConstХ
flatten/ReshapeReshapedropout_1/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         А12
flatten/Reshapeж
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А1*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/MatMulд
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpб
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_1/Sigmoidо
IdentityIdentitydense_1/Sigmoid:y:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         ::::::::::::::2n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
у%
В
H__inference_sequential_layer_call_and_return_conditional_losses_11911599
dense_input
dense_11911564
dense_11911566 
batch_normalization_11911569 
batch_normalization_11911571 
batch_normalization_11911573 
batch_normalization_11911575
conv2d_transpose_11911579
conv2d_transpose_11911581"
batch_normalization_1_11911584"
batch_normalization_1_11911586"
batch_normalization_1_11911588"
batch_normalization_1_11911590
conv2d_transpose_1_11911593
conv2d_transpose_1_11911595
identityИв+batch_normalization/StatefulPartitionedCallв-batch_normalization_1/StatefulPartitionedCallв(conv2d_transpose/StatefulPartitionedCallв*conv2d_transpose_1/StatefulPartitionedCallвdense/StatefulPartitionedCallФ
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_11911564dense_11911566*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_119114422
dense/StatefulPartitionedCall╡
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_11911569batch_normalization_11911571batch_normalization_11911573batch_normalization_11911575*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А1*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_119112082-
+batch_normalization/StatefulPartitionedCallН
reshape/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_119115072
reshape/PartitionedCall∙
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_11911579conv2d_transpose_11911581*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_layer_call_and_return_conditional_losses_119112612*
(conv2d_transpose/StatefulPartitionedCallч
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0batch_normalization_1_11911584batch_normalization_1_11911586batch_normalization_1_11911588batch_normalization_1_11911590*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_119113642/
-batch_normalization_1/StatefulPartitionedCallЩ
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_transpose_1_11911593conv2d_transpose_1_11911595*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_119114102,
*conv2d_transpose_1/StatefulPartitionedCallў
IdentityIdentity3conv2d_transpose_1/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall^dense/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:         А::::::::::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:U Q
(
_output_shapes
:         А
%
_user_specified_namedense_input
З
Ў
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11914847

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╧
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3█
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╛
й
6__inference_batch_normalization_layer_call_fn_11914541

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А1*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_119112082
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А12

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А1::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А1
 
_user_specified_nameinputs
╒╘
д!
#__inference__wrapped_model_11911079
sequential_input@
<sequential_2_sequential_dense_matmul_readvariableop_resourceA
=sequential_2_sequential_dense_biasadd_readvariableop_resourceQ
Msequential_2_sequential_batch_normalization_batchnorm_readvariableop_resourceU
Qsequential_2_sequential_batch_normalization_batchnorm_mul_readvariableop_resourceS
Osequential_2_sequential_batch_normalization_batchnorm_readvariableop_1_resourceS
Osequential_2_sequential_batch_normalization_batchnorm_readvariableop_2_resourceU
Qsequential_2_sequential_conv2d_transpose_conv2d_transpose_readvariableop_resourceL
Hsequential_2_sequential_conv2d_transpose_biasadd_readvariableop_resourceI
Esequential_2_sequential_batch_normalization_1_readvariableop_resourceK
Gsequential_2_sequential_batch_normalization_1_readvariableop_1_resourceZ
Vsequential_2_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource\
Xsequential_2_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceW
Ssequential_2_sequential_conv2d_transpose_1_conv2d_transpose_readvariableop_resourceN
Jsequential_2_sequential_conv2d_transpose_1_biasadd_readvariableop_resourceC
?sequential_2_sequential_1_conv2d_conv2d_readvariableop_resourceD
@sequential_2_sequential_1_conv2d_biasadd_readvariableop_resourceK
Gsequential_2_sequential_1_batch_normalization_2_readvariableop_resourceM
Isequential_2_sequential_1_batch_normalization_2_readvariableop_1_resource\
Xsequential_2_sequential_1_batch_normalization_2_fusedbatchnormv3_readvariableop_resource^
Zsequential_2_sequential_1_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resourceE
Asequential_2_sequential_1_conv2d_1_conv2d_readvariableop_resourceF
Bsequential_2_sequential_1_conv2d_1_biasadd_readvariableop_resourceK
Gsequential_2_sequential_1_batch_normalization_3_readvariableop_resourceM
Isequential_2_sequential_1_batch_normalization_3_readvariableop_1_resource\
Xsequential_2_sequential_1_batch_normalization_3_fusedbatchnormv3_readvariableop_resource^
Zsequential_2_sequential_1_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resourceD
@sequential_2_sequential_1_dense_1_matmul_readvariableop_resourceE
Asequential_2_sequential_1_dense_1_biasadd_readvariableop_resource
identityИвDsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOpвFsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOp_1вFsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOp_2вHsequential_2/sequential/batch_normalization/batchnorm/mul/ReadVariableOpвMsequential_2/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpвOsequential_2/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в<sequential_2/sequential/batch_normalization_1/ReadVariableOpв>sequential_2/sequential/batch_normalization_1/ReadVariableOp_1в?sequential_2/sequential/conv2d_transpose/BiasAdd/ReadVariableOpвHsequential_2/sequential/conv2d_transpose/conv2d_transpose/ReadVariableOpвAsequential_2/sequential/conv2d_transpose_1/BiasAdd/ReadVariableOpвJsequential_2/sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOpв4sequential_2/sequential/dense/BiasAdd/ReadVariableOpв3sequential_2/sequential/dense/MatMul/ReadVariableOpвOsequential_2/sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpвQsequential_2/sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1в>sequential_2/sequential_1/batch_normalization_2/ReadVariableOpв@sequential_2/sequential_1/batch_normalization_2/ReadVariableOp_1вOsequential_2/sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOpвQsequential_2/sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1в>sequential_2/sequential_1/batch_normalization_3/ReadVariableOpв@sequential_2/sequential_1/batch_normalization_3/ReadVariableOp_1в7sequential_2/sequential_1/conv2d/BiasAdd/ReadVariableOpв6sequential_2/sequential_1/conv2d/Conv2D/ReadVariableOpв9sequential_2/sequential_1/conv2d_1/BiasAdd/ReadVariableOpв8sequential_2/sequential_1/conv2d_1/Conv2D/ReadVariableOpв8sequential_2/sequential_1/dense_1/BiasAdd/ReadVariableOpв7sequential_2/sequential_1/dense_1/MatMul/ReadVariableOpщ
3sequential_2/sequential/dense/MatMul/ReadVariableOpReadVariableOp<sequential_2_sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА1*
dtype025
3sequential_2/sequential/dense/MatMul/ReadVariableOp╪
$sequential_2/sequential/dense/MatMulMatMulsequential_input;sequential_2/sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А12&
$sequential_2/sequential/dense/MatMulч
4sequential_2/sequential/dense/BiasAdd/ReadVariableOpReadVariableOp=sequential_2_sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:А1*
dtype026
4sequential_2/sequential/dense/BiasAdd/ReadVariableOp·
%sequential_2/sequential/dense/BiasAddBiasAdd.sequential_2/sequential/dense/MatMul:product:0<sequential_2/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А12'
%sequential_2/sequential/dense/BiasAddЩ
(sequential_2/sequential/dense/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(sequential_2/sequential/dense/Gelu/mul/xэ
&sequential_2/sequential/dense/Gelu/mulMul1sequential_2/sequential/dense/Gelu/mul/x:output:0.sequential_2/sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         А12(
&sequential_2/sequential/dense/Gelu/mulЫ
)sequential_2/sequential/dense/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2+
)sequential_2/sequential/dense/Gelu/Cast/x·
*sequential_2/sequential/dense/Gelu/truedivRealDiv.sequential_2/sequential/dense/BiasAdd:output:02sequential_2/sequential/dense/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:         А12,
*sequential_2/sequential/dense/Gelu/truediv║
&sequential_2/sequential/dense/Gelu/ErfErf.sequential_2/sequential/dense/Gelu/truediv:z:0*
T0*(
_output_shapes
:         А12(
&sequential_2/sequential/dense/Gelu/ErfЩ
(sequential_2/sequential/dense/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2*
(sequential_2/sequential/dense/Gelu/add/xы
&sequential_2/sequential/dense/Gelu/addAddV21sequential_2/sequential/dense/Gelu/add/x:output:0*sequential_2/sequential/dense/Gelu/Erf:y:0*
T0*(
_output_shapes
:         А12(
&sequential_2/sequential/dense/Gelu/addц
(sequential_2/sequential/dense/Gelu/mul_1Mul*sequential_2/sequential/dense/Gelu/mul:z:0*sequential_2/sequential/dense/Gelu/add:z:0*
T0*(
_output_shapes
:         А12*
(sequential_2/sequential/dense/Gelu/mul_1Ч
Dsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOpReadVariableOpMsequential_2_sequential_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:А1*
dtype02F
Dsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOp┐
;sequential_2/sequential/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2=
;sequential_2/sequential/batch_normalization/batchnorm/add/y╣
9sequential_2/sequential/batch_normalization/batchnorm/addAddV2Lsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOp:value:0Dsequential_2/sequential/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А12;
9sequential_2/sequential/batch_normalization/batchnorm/addш
;sequential_2/sequential/batch_normalization/batchnorm/RsqrtRsqrt=sequential_2/sequential/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:А12=
;sequential_2/sequential/batch_normalization/batchnorm/Rsqrtг
Hsequential_2/sequential/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpQsequential_2_sequential_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А1*
dtype02J
Hsequential_2/sequential/batch_normalization/batchnorm/mul/ReadVariableOp╢
9sequential_2/sequential/batch_normalization/batchnorm/mulMul?sequential_2/sequential/batch_normalization/batchnorm/Rsqrt:y:0Psequential_2/sequential/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А12;
9sequential_2/sequential/batch_normalization/batchnorm/mulб
;sequential_2/sequential/batch_normalization/batchnorm/mul_1Mul,sequential_2/sequential/dense/Gelu/mul_1:z:0=sequential_2/sequential/batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А12=
;sequential_2/sequential/batch_normalization/batchnorm/mul_1Э
Fsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOpOsequential_2_sequential_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:А1*
dtype02H
Fsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOp_1╢
;sequential_2/sequential/batch_normalization/batchnorm/mul_2MulNsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOp_1:value:0=sequential_2/sequential/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:А12=
;sequential_2/sequential/batch_normalization/batchnorm/mul_2Э
Fsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOpOsequential_2_sequential_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:А1*
dtype02H
Fsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOp_2┤
9sequential_2/sequential/batch_normalization/batchnorm/subSubNsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOp_2:value:0?sequential_2/sequential/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А12;
9sequential_2/sequential/batch_normalization/batchnorm/sub╢
;sequential_2/sequential/batch_normalization/batchnorm/add_1AddV2?sequential_2/sequential/batch_normalization/batchnorm/mul_1:z:0=sequential_2/sequential/batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А12=
;sequential_2/sequential/batch_normalization/batchnorm/add_1╜
%sequential_2/sequential/reshape/ShapeShape?sequential_2/sequential/batch_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2'
%sequential_2/sequential/reshape/Shape┤
3sequential_2/sequential/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_2/sequential/reshape/strided_slice/stack╕
5sequential_2/sequential/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_2/sequential/reshape/strided_slice/stack_1╕
5sequential_2/sequential/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_2/sequential/reshape/strided_slice/stack_2в
-sequential_2/sequential/reshape/strided_sliceStridedSlice.sequential_2/sequential/reshape/Shape:output:0<sequential_2/sequential/reshape/strided_slice/stack:output:0>sequential_2/sequential/reshape/strided_slice/stack_1:output:0>sequential_2/sequential/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_2/sequential/reshape/strided_sliceд
/sequential_2/sequential/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/sequential_2/sequential/reshape/Reshape/shape/1д
/sequential_2/sequential/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :21
/sequential_2/sequential/reshape/Reshape/shape/2е
/sequential_2/sequential/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А21
/sequential_2/sequential/reshape/Reshape/shape/3·
-sequential_2/sequential/reshape/Reshape/shapePack6sequential_2/sequential/reshape/strided_slice:output:08sequential_2/sequential/reshape/Reshape/shape/1:output:08sequential_2/sequential/reshape/Reshape/shape/2:output:08sequential_2/sequential/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2/
-sequential_2/sequential/reshape/Reshape/shapeС
'sequential_2/sequential/reshape/ReshapeReshape?sequential_2/sequential/batch_normalization/batchnorm/add_1:z:06sequential_2/sequential/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:         А2)
'sequential_2/sequential/reshape/Reshape└
.sequential_2/sequential/conv2d_transpose/ShapeShape0sequential_2/sequential/reshape/Reshape:output:0*
T0*
_output_shapes
:20
.sequential_2/sequential/conv2d_transpose/Shape╞
<sequential_2/sequential/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<sequential_2/sequential/conv2d_transpose/strided_slice/stack╩
>sequential_2/sequential/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_2/sequential/conv2d_transpose/strided_slice/stack_1╩
>sequential_2/sequential/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_2/sequential/conv2d_transpose/strided_slice/stack_2╪
6sequential_2/sequential/conv2d_transpose/strided_sliceStridedSlice7sequential_2/sequential/conv2d_transpose/Shape:output:0Esequential_2/sequential/conv2d_transpose/strided_slice/stack:output:0Gsequential_2/sequential/conv2d_transpose/strided_slice/stack_1:output:0Gsequential_2/sequential/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask28
6sequential_2/sequential/conv2d_transpose/strided_sliceж
0sequential_2/sequential/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :22
0sequential_2/sequential/conv2d_transpose/stack/1ж
0sequential_2/sequential/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :22
0sequential_2/sequential/conv2d_transpose/stack/2ж
0sequential_2/sequential/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@22
0sequential_2/sequential/conv2d_transpose/stack/3И
.sequential_2/sequential/conv2d_transpose/stackPack?sequential_2/sequential/conv2d_transpose/strided_slice:output:09sequential_2/sequential/conv2d_transpose/stack/1:output:09sequential_2/sequential/conv2d_transpose/stack/2:output:09sequential_2/sequential/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:20
.sequential_2/sequential/conv2d_transpose/stack╩
>sequential_2/sequential/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_2/sequential/conv2d_transpose/strided_slice_1/stack╬
@sequential_2/sequential/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_2/sequential/conv2d_transpose/strided_slice_1/stack_1╬
@sequential_2/sequential/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_2/sequential/conv2d_transpose/strided_slice_1/stack_2т
8sequential_2/sequential/conv2d_transpose/strided_slice_1StridedSlice7sequential_2/sequential/conv2d_transpose/stack:output:0Gsequential_2/sequential/conv2d_transpose/strided_slice_1/stack:output:0Isequential_2/sequential/conv2d_transpose/strided_slice_1/stack_1:output:0Isequential_2/sequential/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_2/sequential/conv2d_transpose/strided_slice_1п
Hsequential_2/sequential/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpQsequential_2_sequential_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype02J
Hsequential_2/sequential/conv2d_transpose/conv2d_transpose/ReadVariableOpм
9sequential_2/sequential/conv2d_transpose/conv2d_transposeConv2DBackpropInput7sequential_2/sequential/conv2d_transpose/stack:output:0Psequential_2/sequential/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:00sequential_2/sequential/reshape/Reshape:output:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2;
9sequential_2/sequential/conv2d_transpose/conv2d_transposeЗ
?sequential_2/sequential/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpHsequential_2_sequential_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02A
?sequential_2/sequential/conv2d_transpose/BiasAdd/ReadVariableOp╢
0sequential_2/sequential/conv2d_transpose/BiasAddBiasAddBsequential_2/sequential/conv2d_transpose/conv2d_transpose:output:0Gsequential_2/sequential/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @22
0sequential_2/sequential/conv2d_transpose/BiasAddп
3sequential_2/sequential/conv2d_transpose/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?25
3sequential_2/sequential/conv2d_transpose/Gelu/mul/xа
1sequential_2/sequential/conv2d_transpose/Gelu/mulMul<sequential_2/sequential/conv2d_transpose/Gelu/mul/x:output:09sequential_2/sequential/conv2d_transpose/BiasAdd:output:0*
T0*/
_output_shapes
:         @23
1sequential_2/sequential/conv2d_transpose/Gelu/mul▒
4sequential_2/sequential/conv2d_transpose/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?26
4sequential_2/sequential/conv2d_transpose/Gelu/Cast/xн
5sequential_2/sequential/conv2d_transpose/Gelu/truedivRealDiv9sequential_2/sequential/conv2d_transpose/BiasAdd:output:0=sequential_2/sequential/conv2d_transpose/Gelu/Cast/x:output:0*
T0*/
_output_shapes
:         @27
5sequential_2/sequential/conv2d_transpose/Gelu/truedivт
1sequential_2/sequential/conv2d_transpose/Gelu/ErfErf9sequential_2/sequential/conv2d_transpose/Gelu/truediv:z:0*
T0*/
_output_shapes
:         @23
1sequential_2/sequential/conv2d_transpose/Gelu/Erfп
3sequential_2/sequential/conv2d_transpose/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?25
3sequential_2/sequential/conv2d_transpose/Gelu/add/xЮ
1sequential_2/sequential/conv2d_transpose/Gelu/addAddV2<sequential_2/sequential/conv2d_transpose/Gelu/add/x:output:05sequential_2/sequential/conv2d_transpose/Gelu/Erf:y:0*
T0*/
_output_shapes
:         @23
1sequential_2/sequential/conv2d_transpose/Gelu/addЩ
3sequential_2/sequential/conv2d_transpose/Gelu/mul_1Mul5sequential_2/sequential/conv2d_transpose/Gelu/mul:z:05sequential_2/sequential/conv2d_transpose/Gelu/add:z:0*
T0*/
_output_shapes
:         @25
3sequential_2/sequential/conv2d_transpose/Gelu/mul_1■
<sequential_2/sequential/batch_normalization_1/ReadVariableOpReadVariableOpEsequential_2_sequential_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype02>
<sequential_2/sequential/batch_normalization_1/ReadVariableOpД
>sequential_2/sequential/batch_normalization_1/ReadVariableOp_1ReadVariableOpGsequential_2_sequential_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02@
>sequential_2/sequential/batch_normalization_1/ReadVariableOp_1▒
Msequential_2/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpVsequential_2_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02O
Msequential_2/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp╖
Osequential_2/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpXsequential_2_sequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02Q
Osequential_2/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1П
>sequential_2/sequential/batch_normalization_1/FusedBatchNormV3FusedBatchNormV37sequential_2/sequential/conv2d_transpose/Gelu/mul_1:z:0Dsequential_2/sequential/batch_normalization_1/ReadVariableOp:value:0Fsequential_2/sequential/batch_normalization_1/ReadVariableOp_1:value:0Usequential_2/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Wsequential_2/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2@
>sequential_2/sequential/batch_normalization_1/FusedBatchNormV3╓
0sequential_2/sequential/conv2d_transpose_1/ShapeShapeBsequential_2/sequential/batch_normalization_1/FusedBatchNormV3:y:0*
T0*
_output_shapes
:22
0sequential_2/sequential/conv2d_transpose_1/Shape╩
>sequential_2/sequential/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_2/sequential/conv2d_transpose_1/strided_slice/stack╬
@sequential_2/sequential/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_2/sequential/conv2d_transpose_1/strided_slice/stack_1╬
@sequential_2/sequential/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_2/sequential/conv2d_transpose_1/strided_slice/stack_2ф
8sequential_2/sequential/conv2d_transpose_1/strided_sliceStridedSlice9sequential_2/sequential/conv2d_transpose_1/Shape:output:0Gsequential_2/sequential/conv2d_transpose_1/strided_slice/stack:output:0Isequential_2/sequential/conv2d_transpose_1/strided_slice/stack_1:output:0Isequential_2/sequential/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_2/sequential/conv2d_transpose_1/strided_sliceк
2sequential_2/sequential/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :24
2sequential_2/sequential/conv2d_transpose_1/stack/1к
2sequential_2/sequential/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :24
2sequential_2/sequential/conv2d_transpose_1/stack/2к
2sequential_2/sequential/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :24
2sequential_2/sequential/conv2d_transpose_1/stack/3Ф
0sequential_2/sequential/conv2d_transpose_1/stackPackAsequential_2/sequential/conv2d_transpose_1/strided_slice:output:0;sequential_2/sequential/conv2d_transpose_1/stack/1:output:0;sequential_2/sequential/conv2d_transpose_1/stack/2:output:0;sequential_2/sequential/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:22
0sequential_2/sequential/conv2d_transpose_1/stack╬
@sequential_2/sequential/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2B
@sequential_2/sequential/conv2d_transpose_1/strided_slice_1/stack╥
Bsequential_2/sequential/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Bsequential_2/sequential/conv2d_transpose_1/strided_slice_1/stack_1╥
Bsequential_2/sequential/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Bsequential_2/sequential/conv2d_transpose_1/strided_slice_1/stack_2ю
:sequential_2/sequential/conv2d_transpose_1/strided_slice_1StridedSlice9sequential_2/sequential/conv2d_transpose_1/stack:output:0Isequential_2/sequential/conv2d_transpose_1/strided_slice_1/stack:output:0Ksequential_2/sequential/conv2d_transpose_1/strided_slice_1/stack_1:output:0Ksequential_2/sequential/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2<
:sequential_2/sequential/conv2d_transpose_1/strided_slice_1┤
Jsequential_2/sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpSsequential_2_sequential_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02L
Jsequential_2/sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOp╞
;sequential_2/sequential/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput9sequential_2/sequential/conv2d_transpose_1/stack:output:0Rsequential_2/sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0Bsequential_2/sequential/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
2=
;sequential_2/sequential/conv2d_transpose_1/conv2d_transposeН
Asequential_2/sequential/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpJsequential_2_sequential_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02C
Asequential_2/sequential/conv2d_transpose_1/BiasAdd/ReadVariableOp╛
2sequential_2/sequential/conv2d_transpose_1/BiasAddBiasAddDsequential_2/sequential/conv2d_transpose_1/conv2d_transpose:output:0Isequential_2/sequential/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         24
2sequential_2/sequential/conv2d_transpose_1/BiasAddъ
2sequential_2/sequential/conv2d_transpose_1/SigmoidSigmoid;sequential_2/sequential/conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:         24
2sequential_2/sequential/conv2d_transpose_1/Sigmoid°
6sequential_2/sequential_1/conv2d/Conv2D/ReadVariableOpReadVariableOp?sequential_2_sequential_1_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype028
6sequential_2/sequential_1/conv2d/Conv2D/ReadVariableOp╢
'sequential_2/sequential_1/conv2d/Conv2DConv2D6sequential_2/sequential/conv2d_transpose_1/Sigmoid:y:0>sequential_2/sequential_1/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2)
'sequential_2/sequential_1/conv2d/Conv2Dя
7sequential_2/sequential_1/conv2d/BiasAdd/ReadVariableOpReadVariableOp@sequential_2_sequential_1_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype029
7sequential_2/sequential_1/conv2d/BiasAdd/ReadVariableOpМ
(sequential_2/sequential_1/conv2d/BiasAddBiasAdd0sequential_2/sequential_1/conv2d/Conv2D:output:0?sequential_2/sequential_1/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2*
(sequential_2/sequential_1/conv2d/BiasAddЯ
+sequential_2/sequential_1/conv2d/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2-
+sequential_2/sequential_1/conv2d/Gelu/mul/xА
)sequential_2/sequential_1/conv2d/Gelu/mulMul4sequential_2/sequential_1/conv2d/Gelu/mul/x:output:01sequential_2/sequential_1/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         @2+
)sequential_2/sequential_1/conv2d/Gelu/mulб
,sequential_2/sequential_1/conv2d/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2.
,sequential_2/sequential_1/conv2d/Gelu/Cast/xН
-sequential_2/sequential_1/conv2d/Gelu/truedivRealDiv1sequential_2/sequential_1/conv2d/BiasAdd:output:05sequential_2/sequential_1/conv2d/Gelu/Cast/x:output:0*
T0*/
_output_shapes
:         @2/
-sequential_2/sequential_1/conv2d/Gelu/truediv╩
)sequential_2/sequential_1/conv2d/Gelu/ErfErf1sequential_2/sequential_1/conv2d/Gelu/truediv:z:0*
T0*/
_output_shapes
:         @2+
)sequential_2/sequential_1/conv2d/Gelu/ErfЯ
+sequential_2/sequential_1/conv2d/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2-
+sequential_2/sequential_1/conv2d/Gelu/add/x■
)sequential_2/sequential_1/conv2d/Gelu/addAddV24sequential_2/sequential_1/conv2d/Gelu/add/x:output:0-sequential_2/sequential_1/conv2d/Gelu/Erf:y:0*
T0*/
_output_shapes
:         @2+
)sequential_2/sequential_1/conv2d/Gelu/add∙
+sequential_2/sequential_1/conv2d/Gelu/mul_1Mul-sequential_2/sequential_1/conv2d/Gelu/mul:z:0-sequential_2/sequential_1/conv2d/Gelu/add:z:0*
T0*/
_output_shapes
:         @2-
+sequential_2/sequential_1/conv2d/Gelu/mul_1Д
>sequential_2/sequential_1/batch_normalization_2/ReadVariableOpReadVariableOpGsequential_2_sequential_1_batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype02@
>sequential_2/sequential_1/batch_normalization_2/ReadVariableOpК
@sequential_2/sequential_1/batch_normalization_2/ReadVariableOp_1ReadVariableOpIsequential_2_sequential_1_batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02B
@sequential_2/sequential_1/batch_normalization_2/ReadVariableOp_1╖
Osequential_2/sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpXsequential_2_sequential_1_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02Q
Osequential_2/sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp╜
Qsequential_2/sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZsequential_2_sequential_1_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02S
Qsequential_2/sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1У
@sequential_2/sequential_1/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3/sequential_2/sequential_1/conv2d/Gelu/mul_1:z:0Fsequential_2/sequential_1/batch_normalization_2/ReadVariableOp:value:0Hsequential_2/sequential_1/batch_normalization_2/ReadVariableOp_1:value:0Wsequential_2/sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Ysequential_2/sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2B
@sequential_2/sequential_1/batch_normalization_2/FusedBatchNormV3ф
*sequential_2/sequential_1/dropout/IdentityIdentityDsequential_2/sequential_1/batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @2,
*sequential_2/sequential_1/dropout/Identity 
8sequential_2/sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOpAsequential_2_sequential_1_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02:
8sequential_2/sequential_1/conv2d_1/Conv2D/ReadVariableOp║
)sequential_2/sequential_1/conv2d_1/Conv2DConv2D3sequential_2/sequential_1/dropout/Identity:output:0@sequential_2/sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2+
)sequential_2/sequential_1/conv2d_1/Conv2DЎ
9sequential_2/sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpBsequential_2_sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02;
9sequential_2/sequential_1/conv2d_1/BiasAdd/ReadVariableOpХ
*sequential_2/sequential_1/conv2d_1/BiasAddBiasAdd2sequential_2/sequential_1/conv2d_1/Conv2D:output:0Asequential_2/sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2,
*sequential_2/sequential_1/conv2d_1/BiasAddг
-sequential_2/sequential_1/conv2d_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2/
-sequential_2/sequential_1/conv2d_1/Gelu/mul/xЙ
+sequential_2/sequential_1/conv2d_1/Gelu/mulMul6sequential_2/sequential_1/conv2d_1/Gelu/mul/x:output:03sequential_2/sequential_1/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:         А2-
+sequential_2/sequential_1/conv2d_1/Gelu/mulе
.sequential_2/sequential_1/conv2d_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?20
.sequential_2/sequential_1/conv2d_1/Gelu/Cast/xЦ
/sequential_2/sequential_1/conv2d_1/Gelu/truedivRealDiv3sequential_2/sequential_1/conv2d_1/BiasAdd:output:07sequential_2/sequential_1/conv2d_1/Gelu/Cast/x:output:0*
T0*0
_output_shapes
:         А21
/sequential_2/sequential_1/conv2d_1/Gelu/truediv╤
+sequential_2/sequential_1/conv2d_1/Gelu/ErfErf3sequential_2/sequential_1/conv2d_1/Gelu/truediv:z:0*
T0*0
_output_shapes
:         А2-
+sequential_2/sequential_1/conv2d_1/Gelu/Erfг
-sequential_2/sequential_1/conv2d_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2/
-sequential_2/sequential_1/conv2d_1/Gelu/add/xЗ
+sequential_2/sequential_1/conv2d_1/Gelu/addAddV26sequential_2/sequential_1/conv2d_1/Gelu/add/x:output:0/sequential_2/sequential_1/conv2d_1/Gelu/Erf:y:0*
T0*0
_output_shapes
:         А2-
+sequential_2/sequential_1/conv2d_1/Gelu/addВ
-sequential_2/sequential_1/conv2d_1/Gelu/mul_1Mul/sequential_2/sequential_1/conv2d_1/Gelu/mul:z:0/sequential_2/sequential_1/conv2d_1/Gelu/add:z:0*
T0*0
_output_shapes
:         А2/
-sequential_2/sequential_1/conv2d_1/Gelu/mul_1Е
>sequential_2/sequential_1/batch_normalization_3/ReadVariableOpReadVariableOpGsequential_2_sequential_1_batch_normalization_3_readvariableop_resource*
_output_shapes	
:А*
dtype02@
>sequential_2/sequential_1/batch_normalization_3/ReadVariableOpЛ
@sequential_2/sequential_1/batch_normalization_3/ReadVariableOp_1ReadVariableOpIsequential_2_sequential_1_batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02B
@sequential_2/sequential_1/batch_normalization_3/ReadVariableOp_1╕
Osequential_2/sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpXsequential_2_sequential_1_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02Q
Osequential_2/sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp╛
Qsequential_2/sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZsequential_2_sequential_1_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02S
Qsequential_2/sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Ъ
@sequential_2/sequential_1/batch_normalization_3/FusedBatchNormV3FusedBatchNormV31sequential_2/sequential_1/conv2d_1/Gelu/mul_1:z:0Fsequential_2/sequential_1/batch_normalization_3/ReadVariableOp:value:0Hsequential_2/sequential_1/batch_normalization_3/ReadVariableOp_1:value:0Wsequential_2/sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Ysequential_2/sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2B
@sequential_2/sequential_1/batch_normalization_3/FusedBatchNormV3щ
,sequential_2/sequential_1/dropout_1/IdentityIdentityDsequential_2/sequential_1/batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А2.
,sequential_2/sequential_1/dropout_1/Identityг
'sequential_2/sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  2)
'sequential_2/sequential_1/flatten/Const¤
)sequential_2/sequential_1/flatten/ReshapeReshape5sequential_2/sequential_1/dropout_1/Identity:output:00sequential_2/sequential_1/flatten/Const:output:0*
T0*(
_output_shapes
:         А12+
)sequential_2/sequential_1/flatten/ReshapeЇ
7sequential_2/sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp@sequential_2_sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	А1*
dtype029
7sequential_2/sequential_1/dense_1/MatMul/ReadVariableOpЕ
(sequential_2/sequential_1/dense_1/MatMulMatMul2sequential_2/sequential_1/flatten/Reshape:output:0?sequential_2/sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2*
(sequential_2/sequential_1/dense_1/MatMulЄ
8sequential_2/sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpAsequential_2_sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_2/sequential_1/dense_1/BiasAdd/ReadVariableOpЙ
)sequential_2/sequential_1/dense_1/BiasAddBiasAdd2sequential_2/sequential_1/dense_1/MatMul:product:0@sequential_2/sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2+
)sequential_2/sequential_1/dense_1/BiasAdd╟
)sequential_2/sequential_1/dense_1/SigmoidSigmoid2sequential_2/sequential_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2+
)sequential_2/sequential_1/dense_1/SigmoidЕ
IdentityIdentity-sequential_2/sequential_1/dense_1/Sigmoid:y:0E^sequential_2/sequential/batch_normalization/batchnorm/ReadVariableOpG^sequential_2/sequential/batch_normalization/batchnorm/ReadVariableOp_1G^sequential_2/sequential/batch_normalization/batchnorm/ReadVariableOp_2I^sequential_2/sequential/batch_normalization/batchnorm/mul/ReadVariableOpN^sequential_2/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpP^sequential_2/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1=^sequential_2/sequential/batch_normalization_1/ReadVariableOp?^sequential_2/sequential/batch_normalization_1/ReadVariableOp_1@^sequential_2/sequential/conv2d_transpose/BiasAdd/ReadVariableOpI^sequential_2/sequential/conv2d_transpose/conv2d_transpose/ReadVariableOpB^sequential_2/sequential/conv2d_transpose_1/BiasAdd/ReadVariableOpK^sequential_2/sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOp5^sequential_2/sequential/dense/BiasAdd/ReadVariableOp4^sequential_2/sequential/dense/MatMul/ReadVariableOpP^sequential_2/sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpR^sequential_2/sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?^sequential_2/sequential_1/batch_normalization_2/ReadVariableOpA^sequential_2/sequential_1/batch_normalization_2/ReadVariableOp_1P^sequential_2/sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOpR^sequential_2/sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?^sequential_2/sequential_1/batch_normalization_3/ReadVariableOpA^sequential_2/sequential_1/batch_normalization_3/ReadVariableOp_18^sequential_2/sequential_1/conv2d/BiasAdd/ReadVariableOp7^sequential_2/sequential_1/conv2d/Conv2D/ReadVariableOp:^sequential_2/sequential_1/conv2d_1/BiasAdd/ReadVariableOp9^sequential_2/sequential_1/conv2d_1/Conv2D/ReadVariableOp9^sequential_2/sequential_1/dense_1/BiasAdd/ReadVariableOp8^sequential_2/sequential_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:         А::::::::::::::::::::::::::::2М
Dsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOpDsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOp2Р
Fsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOp_1Fsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOp_12Р
Fsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOp_2Fsequential_2/sequential/batch_normalization/batchnorm/ReadVariableOp_22Ф
Hsequential_2/sequential/batch_normalization/batchnorm/mul/ReadVariableOpHsequential_2/sequential/batch_normalization/batchnorm/mul/ReadVariableOp2Ю
Msequential_2/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpMsequential_2/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2в
Osequential_2/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Osequential_2/sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12|
<sequential_2/sequential/batch_normalization_1/ReadVariableOp<sequential_2/sequential/batch_normalization_1/ReadVariableOp2А
>sequential_2/sequential/batch_normalization_1/ReadVariableOp_1>sequential_2/sequential/batch_normalization_1/ReadVariableOp_12В
?sequential_2/sequential/conv2d_transpose/BiasAdd/ReadVariableOp?sequential_2/sequential/conv2d_transpose/BiasAdd/ReadVariableOp2Ф
Hsequential_2/sequential/conv2d_transpose/conv2d_transpose/ReadVariableOpHsequential_2/sequential/conv2d_transpose/conv2d_transpose/ReadVariableOp2Ж
Asequential_2/sequential/conv2d_transpose_1/BiasAdd/ReadVariableOpAsequential_2/sequential/conv2d_transpose_1/BiasAdd/ReadVariableOp2Ш
Jsequential_2/sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOpJsequential_2/sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2l
4sequential_2/sequential/dense/BiasAdd/ReadVariableOp4sequential_2/sequential/dense/BiasAdd/ReadVariableOp2j
3sequential_2/sequential/dense/MatMul/ReadVariableOp3sequential_2/sequential/dense/MatMul/ReadVariableOp2в
Osequential_2/sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpOsequential_2/sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2ж
Qsequential_2/sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Qsequential_2/sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12А
>sequential_2/sequential_1/batch_normalization_2/ReadVariableOp>sequential_2/sequential_1/batch_normalization_2/ReadVariableOp2Д
@sequential_2/sequential_1/batch_normalization_2/ReadVariableOp_1@sequential_2/sequential_1/batch_normalization_2/ReadVariableOp_12в
Osequential_2/sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOpOsequential_2/sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2ж
Qsequential_2/sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Qsequential_2/sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12А
>sequential_2/sequential_1/batch_normalization_3/ReadVariableOp>sequential_2/sequential_1/batch_normalization_3/ReadVariableOp2Д
@sequential_2/sequential_1/batch_normalization_3/ReadVariableOp_1@sequential_2/sequential_1/batch_normalization_3/ReadVariableOp_12r
7sequential_2/sequential_1/conv2d/BiasAdd/ReadVariableOp7sequential_2/sequential_1/conv2d/BiasAdd/ReadVariableOp2p
6sequential_2/sequential_1/conv2d/Conv2D/ReadVariableOp6sequential_2/sequential_1/conv2d/Conv2D/ReadVariableOp2v
9sequential_2/sequential_1/conv2d_1/BiasAdd/ReadVariableOp9sequential_2/sequential_1/conv2d_1/BiasAdd/ReadVariableOp2t
8sequential_2/sequential_1/conv2d_1/Conv2D/ReadVariableOp8sequential_2/sequential_1/conv2d_1/Conv2D/ReadVariableOp2t
8sequential_2/sequential_1/dense_1/BiasAdd/ReadVariableOp8sequential_2/sequential_1/dense_1/BiasAdd/ReadVariableOp2r
7sequential_2/sequential_1/dense_1/MatMul/ReadVariableOp7sequential_2/sequential_1/dense_1/MatMul/ReadVariableOp:Z V
(
_output_shapes
:         А
*
_user_specified_namesequential_input
├
Ў
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11911831

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
а

╣
-__inference_sequential_layer_call_fn_11913941

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИвStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_119116402
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:         А::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
№
Ч
J__inference_sequential_2_layer_call_and_return_conditional_losses_11912796
sequential_input
sequential_11912515
sequential_11912517
sequential_11912519
sequential_11912521
sequential_11912523
sequential_11912525
sequential_11912527
sequential_11912529
sequential_11912531
sequential_11912533
sequential_11912535
sequential_11912537
sequential_11912539
sequential_11912541
sequential_1_11912766
sequential_1_11912768
sequential_1_11912770
sequential_1_11912772
sequential_1_11912774
sequential_1_11912776
sequential_1_11912778
sequential_1_11912780
sequential_1_11912782
sequential_1_11912784
sequential_1_11912786
sequential_1_11912788
sequential_1_11912790
sequential_1_11912792
identityИв"sequential/StatefulPartitionedCallв$sequential_1/StatefulPartitionedCall█
"sequential/StatefulPartitionedCallStatefulPartitionedCallsequential_inputsequential_11912515sequential_11912517sequential_11912519sequential_11912521sequential_11912523sequential_11912525sequential_11912527sequential_11912529sequential_11912531sequential_11912533sequential_11912535sequential_11912537sequential_11912539sequential_11912541*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_119116402$
"sequential/StatefulPartitionedCallВ
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_11912766sequential_1_11912768sequential_1_11912770sequential_1_11912772sequential_1_11912774sequential_1_11912776sequential_1_11912778sequential_1_11912780sequential_1_11912782sequential_1_11912784sequential_1_11912786sequential_1_11912788sequential_1_11912790sequential_1_11912792*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_119126282&
$sequential_1/StatefulPartitionedCall═
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:         А::::::::::::::::::::::::::::2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:Z V
(
_output_shapes
:         А
*
_user_specified_namesequential_input
Ж
А
+__inference_conv2d_1_layer_call_fn_11914829

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_119120992
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
т
И
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_11914515

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpУ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А1*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЙ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А12
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А12
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А1*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А12
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А12
batchnorm/mul_1Щ
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:А1*
dtype02
batchnorm/ReadVariableOp_1Ж
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А12
batchnorm/mul_2Щ
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:А1*
dtype02
batchnorm/ReadVariableOp_2Д
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А12
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А12
batchnorm/add_1▄
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А12

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А1::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А1
 
_user_specified_nameinputs
╦
e
,__inference_dropout_1_layer_call_fn_11914975

inputs
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_119121982
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
├
d
E__inference_dropout_layer_call_and_return_conditional_losses_11914787

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╧
Ы
/__inference_sequential_2_layer_call_fn_11913619

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_2_layer_call_and_return_conditional_losses_119129232
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:         А::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╧
Ъ
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11914580

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╝
й
6__inference_batch_normalization_layer_call_fn_11914528

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_119111752
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А12

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А1::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А1
 
_user_specified_nameinputs
д
л
8__inference_batch_normalization_1_layer_call_fn_11914611

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_119113332
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
∙
▀
F__inference_conv2d_1_layer_call_and_return_conditional_losses_11914820

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdd]

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

Gelu/mul/x}
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*0
_output_shapes
:         А2

Gelu/mul_
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
Gelu/Cast/xК
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*0
_output_shapes
:         А2
Gelu/truedivh
Gelu/ErfErfGelu/truediv:z:0*
T0*0
_output_shapes
:         А2

Gelu/Erf]

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2

Gelu/add/x{
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*0
_output_shapes
:         А2

Gelu/addv

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*0
_output_shapes
:         А2

Gelu/mul_1Ь
IdentityIdentityGelu/mul_1:z:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
у

*__inference_dense_1_layer_call_fn_11915011

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_119122412
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А1::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А1
 
_user_specified_nameinputs
ж
л
8__inference_batch_normalization_2_layer_call_fn_11914700

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall║
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_119118002
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
В

╗
/__inference_sequential_1_layer_call_fn_11914432

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_119124142
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ш
c
E__inference_dropout_layer_call_and_return_conditional_losses_11914792

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
∙
▄
C__inference_dense_layer_call_and_return_conditional_losses_11914450

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА1*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А12
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А1*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А12	
BiasAdd]

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

Gelu/mul/xu
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*(
_output_shapes
:         А12

Gelu/mul_
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
Gelu/Cast/xВ
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*(
_output_shapes
:         А12
Gelu/truediv`
Gelu/ErfErfGelu/truediv:z:0*
T0*(
_output_shapes
:         А12

Gelu/Erf]

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2

Gelu/add/xs
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*(
_output_shapes
:         А12

Gelu/addn

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*(
_output_shapes
:         А12

Gelu/mul_1Ф
IdentityIdentityGelu/mul_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А12

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
л
F
*__inference_reshape_layer_call_fn_11914560

inputs
identity╧
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_119115072
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А1:P L
(
_output_shapes
:         А1
 
_user_specified_nameinputs
─W
Я
J__inference_sequential_1_layer_call_and_return_conditional_losses_11914366

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource1
-batch_normalization_2_readvariableop_resource3
/batch_normalization_2_readvariableop_1_resourceB
>batch_normalization_2_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource1
-batch_normalization_3_readvariableop_resource3
/batch_normalization_3_readvariableop_1_resourceB
>batch_normalization_3_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityИв5batch_normalization_2/FusedBatchNormV3/ReadVariableOpв7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_2/ReadVariableOpв&batch_normalization_2/ReadVariableOp_1в5batch_normalization_3/FusedBatchNormV3/ReadVariableOpв7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_3/ReadVariableOpв&batch_normalization_3/ReadVariableOp_1вconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpк
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp╕
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d/Conv2Dб
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOpд
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d/BiasAddk
conv2d/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv2d/Gelu/mul/xШ
conv2d/Gelu/mulMulconv2d/Gelu/mul/x:output:0conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/mulm
conv2d/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
conv2d/Gelu/Cast/xе
conv2d/Gelu/truedivRealDivconv2d/BiasAdd:output:0conv2d/Gelu/Cast/x:output:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/truediv|
conv2d/Gelu/ErfErfconv2d/Gelu/truediv:z:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/Erfk
conv2d/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
conv2d/Gelu/add/xЦ
conv2d/Gelu/addAddV2conv2d/Gelu/add/x:output:0conv2d/Gelu/Erf:y:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/addС
conv2d/Gelu/mul_1Mulconv2d/Gelu/mul:z:0conv2d/Gelu/add:z:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/mul_1╢
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_2/ReadVariableOp╝
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_2/ReadVariableOp_1щ
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1▌
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d/Gelu/mul_1:z:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_2/FusedBatchNormV3Ц
dropout/IdentityIdentity*batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @2
dropout/Identity▒
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02 
conv2d_1/Conv2D/ReadVariableOp╥
conv2d_1/Conv2DConv2Ddropout/Identity:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_1/Conv2Dи
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_1/BiasAdd/ReadVariableOpн
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_1/BiasAddo
conv2d_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv2d_1/Gelu/mul/xб
conv2d_1/Gelu/mulMulconv2d_1/Gelu/mul/x:output:0conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/mulq
conv2d_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
conv2d_1/Gelu/Cast/xо
conv2d_1/Gelu/truedivRealDivconv2d_1/BiasAdd:output:0conv2d_1/Gelu/Cast/x:output:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/truedivГ
conv2d_1/Gelu/ErfErfconv2d_1/Gelu/truediv:z:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/Erfo
conv2d_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
conv2d_1/Gelu/add/xЯ
conv2d_1/Gelu/addAddV2conv2d_1/Gelu/add/x:output:0conv2d_1/Gelu/Erf:y:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/addЪ
conv2d_1/Gelu/mul_1Mulconv2d_1/Gelu/mul:z:0conv2d_1/Gelu/add:z:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/mul_1╖
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$batch_normalization_3/ReadVariableOp╜
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02(
&batch_normalization_3/ReadVariableOp_1ъ
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpЁ
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ф
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_1/Gelu/mul_1:z:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_3/FusedBatchNormV3Ы
dropout_1/IdentityIdentity*batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А2
dropout_1/Identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  2
flatten/ConstХ
flatten/ReshapeReshapedropout_1/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         А12
flatten/Reshapeж
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А1*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/MatMulд
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpб
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_1/Sigmoidо
IdentityIdentitydense_1/Sigmoid:y:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         ::::::::::::::2n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ч,
Я
J__inference_sequential_1_layer_call_and_return_conditional_losses_11912258
conv2d_input
conv2d_11911975
conv2d_11911977"
batch_normalization_2_11912042"
batch_normalization_2_11912044"
batch_normalization_2_11912046"
batch_normalization_2_11912048
conv2d_1_11912110
conv2d_1_11912112"
batch_normalization_3_11912177"
batch_normalization_3_11912179"
batch_normalization_3_11912181"
batch_normalization_3_11912183
dense_1_11912252
dense_1_11912254
identityИв-batch_normalization_2/StatefulPartitionedCallв-batch_normalization_3/StatefulPartitionedCallвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdropout/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallб
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_11911975conv2d_11911977*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_119119642 
conv2d/StatefulPartitionedCall╦
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_2_11912042batch_normalization_2_11912044batch_normalization_2_11912046batch_normalization_2_11912048*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_119119972/
-batch_normalization_2/StatefulPartitionedCallж
dropout/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_119120632!
dropout/StatefulPartitionedCall╚
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv2d_1_11912110conv2d_1_11912112*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_119120992"
 conv2d_1/StatefulPartitionedCall╬
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_3_11912177batch_normalization_3_11912179batch_normalization_3_11912181batch_normalization_3_11912183*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_119121322/
-batch_normalization_3/StatefulPartitionedCall╧
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_119121982#
!dropout_1/StatefulPartitionedCall√
flatten/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_119122222
flatten/PartitionedCall▓
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_11912252dense_1_11912254*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_119122412!
dense_1/StatefulPartitionedCallИ
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         ::::::::::::::2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:] Y
/
_output_shapes
:         
&
_user_specified_nameconv2d_input
├
Ў
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11914669

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╧
Ў
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11914909

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
к
л
8__inference_batch_normalization_3_layer_call_fn_11914940

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╗
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_119119002
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
с
}
(__inference_dense_layer_call_fn_11914459

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_119114422
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А12

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▐
Н
J__inference_sequential_2_layer_call_and_return_conditional_losses_11912923

inputs
sequential_11912864
sequential_11912866
sequential_11912868
sequential_11912870
sequential_11912872
sequential_11912874
sequential_11912876
sequential_11912878
sequential_11912880
sequential_11912882
sequential_11912884
sequential_11912886
sequential_11912888
sequential_11912890
sequential_1_11912893
sequential_1_11912895
sequential_1_11912897
sequential_1_11912899
sequential_1_11912901
sequential_1_11912903
sequential_1_11912905
sequential_1_11912907
sequential_1_11912909
sequential_1_11912911
sequential_1_11912913
sequential_1_11912915
sequential_1_11912917
sequential_1_11912919
identityИв"sequential/StatefulPartitionedCallв$sequential_1/StatefulPartitionedCall╤
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_11912864sequential_11912866sequential_11912868sequential_11912870sequential_11912872sequential_11912874sequential_11912876sequential_11912878sequential_11912880sequential_11912882sequential_11912884sequential_11912886sequential_11912888sequential_11912890*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_119116402$
"sequential/StatefulPartitionedCallВ
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_11912893sequential_1_11912895sequential_1_11912897sequential_1_11912899sequential_1_11912901sequential_1_11912903sequential_1_11912905sequential_1_11912907sequential_1_11912909sequential_1_11912911sequential_1_11912913sequential_1_11912915sequential_1_11912917sequential_1_11912919*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_119126282&
$sequential_1/StatefulPartitionedCall═
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:         А::::::::::::::::::::::::::::2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╧+
√
N__inference_conv2d_transpose_layer_call_and_return_conditional_losses_11911261

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3┤
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @2	
BiasAdd]

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

Gelu/mul/xО
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*A
_output_shapes/
-:+                           @2

Gelu/mul_
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
Gelu/Cast/xЫ
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*A
_output_shapes/
-:+                           @2
Gelu/truedivy
Gelu/ErfErfGelu/truediv:z:0*
T0*A
_output_shapes/
-:+                           @2

Gelu/Erf]

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2

Gelu/add/xМ
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*A
_output_shapes/
-:+                           @2

Gelu/addЗ

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*A
_output_shapes/
-:+                           @2

Gelu/mul_1╖
IdentityIdentityGelu/mul_1:z:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,                           А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
├
Ў
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11914598

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
З
Ў
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11912132

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╧
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3█
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
фj
Я
J__inference_sequential_1_layer_call_and_return_conditional_losses_11912628

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource1
-batch_normalization_2_readvariableop_resource3
/batch_normalization_2_readvariableop_1_resourceB
>batch_normalization_2_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource1
-batch_normalization_3_readvariableop_resource3
/batch_normalization_3_readvariableop_1_resourceB
>batch_normalization_3_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityИв5batch_normalization_2/FusedBatchNormV3/ReadVariableOpв7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_2/ReadVariableOpв&batch_normalization_2/ReadVariableOp_1в5batch_normalization_3/FusedBatchNormV3/ReadVariableOpв7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_3/ReadVariableOpв&batch_normalization_3/ReadVariableOp_1вconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpк
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp╕
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d/Conv2Dб
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOpд
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d/BiasAddk
conv2d/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv2d/Gelu/mul/xШ
conv2d/Gelu/mulMulconv2d/Gelu/mul/x:output:0conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/mulm
conv2d/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
conv2d/Gelu/Cast/xе
conv2d/Gelu/truedivRealDivconv2d/BiasAdd:output:0conv2d/Gelu/Cast/x:output:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/truediv|
conv2d/Gelu/ErfErfconv2d/Gelu/truediv:z:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/Erfk
conv2d/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
conv2d/Gelu/add/xЦ
conv2d/Gelu/addAddV2conv2d/Gelu/add/x:output:0conv2d/Gelu/Erf:y:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/addС
conv2d/Gelu/mul_1Mulconv2d/Gelu/mul:z:0conv2d/Gelu/add:z:0*
T0*/
_output_shapes
:         @2
conv2d/Gelu/mul_1╢
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_2/ReadVariableOp╝
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_2/ReadVariableOp_1щ
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1▌
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d/Gelu/mul_1:z:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_2/FusedBatchNormV3s
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2
dropout/dropout/Const╖
dropout/dropout/MulMul*batch_normalization_2/FusedBatchNormV3:y:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/dropout/MulИ
dropout/dropout/ShapeShape*batch_normalization_2/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
dropout/dropout/Shape╘
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2 
dropout/dropout/GreaterEqual/yц
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/dropout/GreaterEqualЯ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/dropout/Castв
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/dropout/Mul_1▒
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02 
conv2d_1/Conv2D/ReadVariableOp╥
conv2d_1/Conv2DConv2Ddropout/dropout/Mul_1:z:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_1/Conv2Dи
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_1/BiasAdd/ReadVariableOpн
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_1/BiasAddo
conv2d_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv2d_1/Gelu/mul/xб
conv2d_1/Gelu/mulMulconv2d_1/Gelu/mul/x:output:0conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/mulq
conv2d_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
conv2d_1/Gelu/Cast/xо
conv2d_1/Gelu/truedivRealDivconv2d_1/BiasAdd:output:0conv2d_1/Gelu/Cast/x:output:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/truedivГ
conv2d_1/Gelu/ErfErfconv2d_1/Gelu/truediv:z:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/Erfo
conv2d_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
conv2d_1/Gelu/add/xЯ
conv2d_1/Gelu/addAddV2conv2d_1/Gelu/add/x:output:0conv2d_1/Gelu/Erf:y:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/addЪ
conv2d_1/Gelu/mul_1Mulconv2d_1/Gelu/mul:z:0conv2d_1/Gelu/add:z:0*
T0*0
_output_shapes
:         А2
conv2d_1/Gelu/mul_1╖
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$batch_normalization_3/ReadVariableOp╜
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02(
&batch_normalization_3/ReadVariableOp_1ъ
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpЁ
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ф
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_1/Gelu/mul_1:z:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_3/FusedBatchNormV3w
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2
dropout_1/dropout/Const╛
dropout_1/dropout/MulMul*batch_normalization_3/FusedBatchNormV3:y:0 dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout_1/dropout/MulМ
dropout_1/dropout/ShapeShape*batch_normalization_3/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape█
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЙ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2"
 dropout_1/dropout/GreaterEqual/yя
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2 
dropout_1/dropout/GreaterEqualж
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout_1/dropout/Castл
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout_1/dropout/Mul_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  2
flatten/ConstХ
flatten/ReshapeReshapedropout_1/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:         А12
flatten/Reshapeж
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А1*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/MatMulд
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpб
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_1/Sigmoidо
IdentityIdentitydense_1/Sigmoid:y:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         ::::::::::::::2n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
▐
л
8__inference_batch_normalization_2_layer_call_fn_11914775

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_119120152
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
 
~
)__inference_conv2d_layer_call_fn_11914651

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_119119642
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╗0
╠
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_11914495

inputs
assignmovingavg_11914470
assignmovingavg_1_11914476)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityИв#AssignMovingAvg/AssignSubVariableOpвAssignMovingAvg/ReadVariableOpв%AssignMovingAvg_1/AssignSubVariableOpв AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesР
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А1*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	А12
moments/StopGradientе
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         А12
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices│
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А1*
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:А1*
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:А1*
squeeze_dims
 2
moments/Squeeze_1╬
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg/11914470*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg/decayЦ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_11914470*
_output_shapes	
:А1*
dtype02 
AssignMovingAvg/ReadVariableOpЇ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg/11914470*
_output_shapes	
:А12
AssignMovingAvg/subы
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg/11914470*
_output_shapes	
:А12
AssignMovingAvg/mul│
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_11914470AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg/11914470*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp╘
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*-
_class#
!loc:@AssignMovingAvg_1/11914476*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg_1/decayЬ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_11914476*
_output_shapes	
:А1*
dtype02"
 AssignMovingAvg_1/ReadVariableOp■
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*-
_class#
!loc:@AssignMovingAvg_1/11914476*
_output_shapes	
:А12
AssignMovingAvg_1/subї
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*-
_class#
!loc:@AssignMovingAvg_1/11914476*
_output_shapes	
:А12
AssignMovingAvg_1/mul┐
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_11914476AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*-
_class#
!loc:@AssignMovingAvg_1/11914476*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yГ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А12
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А12
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А1*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А12
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А12
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А12
batchnorm/mul_2У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А1*
dtype02
batchnorm/ReadVariableOpВ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А12
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А12
batchnorm/add_1┤
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А12

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А1::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А1
 
_user_specified_nameinputs
э
▌
D__inference_conv2d_layer_call_and_return_conditional_losses_11911964

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd]

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

Gelu/mul/x|
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*/
_output_shapes
:         @2

Gelu/mul_
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
Gelu/Cast/xЙ
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*/
_output_shapes
:         @2
Gelu/truedivg
Gelu/ErfErfGelu/truediv:z:0*
T0*/
_output_shapes
:         @2

Gelu/Erf]

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2

Gelu/add/xz
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*/
_output_shapes
:         @2

Gelu/addu

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*/
_output_shapes
:         @2

Gelu/mul_1Ы
IdentityIdentityGelu/mul_1:z:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
п

╛
-__inference_sequential_layer_call_fn_11911671
dense_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИвStatefulPartitionedCall╡
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_119116402
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:         А::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
(
_output_shapes
:         А
%
_user_specified_namedense_input
├
Ў
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11911364

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ю
e
G__inference_dropout_1_layer_call_and_return_conditional_losses_11914970

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▐
И
3__inference_conv2d_transpose_layer_call_fn_11911271

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_layer_call_and_return_conditional_losses_119112612
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,                           А::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
э
е
/__inference_sequential_2_layer_call_fn_11912982
sequential_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_2_layer_call_and_return_conditional_losses_119129232
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:         А::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
(
_output_shapes
:         А
*
_user_specified_namesequential_input
├
c
*__inference_dropout_layer_call_fn_11914797

inputs
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_119120632
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ё
е
/__inference_sequential_2_layer_call_fn_11913105
sequential_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identityИвStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_2_layer_call_and_return_conditional_losses_119130462
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:         А::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
(
_output_shapes
:         А
*
_user_specified_namesequential_input
╨%
¤
H__inference_sequential_layer_call_and_return_conditional_losses_11911640

inputs
dense_11911605
dense_11911607 
batch_normalization_11911610 
batch_normalization_11911612 
batch_normalization_11911614 
batch_normalization_11911616
conv2d_transpose_11911620
conv2d_transpose_11911622"
batch_normalization_1_11911625"
batch_normalization_1_11911627"
batch_normalization_1_11911629"
batch_normalization_1_11911631
conv2d_transpose_1_11911634
conv2d_transpose_1_11911636
identityИв+batch_normalization/StatefulPartitionedCallв-batch_normalization_1/StatefulPartitionedCallв(conv2d_transpose/StatefulPartitionedCallв*conv2d_transpose_1/StatefulPartitionedCallвdense/StatefulPartitionedCallП
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_11911605dense_11911607*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_119114422
dense/StatefulPartitionedCall│
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_11911610batch_normalization_11911612batch_normalization_11911614batch_normalization_11911616*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_119111752-
+batch_normalization/StatefulPartitionedCallН
reshape/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_119115072
reshape/PartitionedCall∙
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_11911620conv2d_transpose_11911622*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_layer_call_and_return_conditional_losses_119112612*
(conv2d_transpose/StatefulPartitionedCallх
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0batch_normalization_1_11911625batch_normalization_1_11911627batch_normalization_1_11911629batch_normalization_1_11911631*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_119113332/
-batch_normalization_1/StatefulPartitionedCallЩ
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_transpose_1_11911634conv2d_transpose_1_11911636*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_119114102,
*conv2d_transpose_1/StatefulPartitionedCallў
IdentityIdentity3conv2d_transpose_1/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall^dense/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:         А::::::::::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╒,
Щ
J__inference_sequential_1_layer_call_and_return_conditional_losses_11912341

inputs
conv2d_11912304
conv2d_11912306"
batch_normalization_2_11912309"
batch_normalization_2_11912311"
batch_normalization_2_11912313"
batch_normalization_2_11912315
conv2d_1_11912319
conv2d_1_11912321"
batch_normalization_3_11912324"
batch_normalization_3_11912326"
batch_normalization_3_11912328"
batch_normalization_3_11912330
dense_1_11912335
dense_1_11912337
identityИв-batch_normalization_2/StatefulPartitionedCallв-batch_normalization_3/StatefulPartitionedCallвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdropout/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallЫ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_11912304conv2d_11912306*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_119119642 
conv2d/StatefulPartitionedCall╦
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_2_11912309batch_normalization_2_11912311batch_normalization_2_11912313batch_normalization_2_11912315*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_119119972/
-batch_normalization_2/StatefulPartitionedCallж
dropout/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_119120632!
dropout/StatefulPartitionedCall╚
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv2d_1_11912319conv2d_1_11912321*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_119120992"
 conv2d_1/StatefulPartitionedCall╬
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_3_11912324batch_normalization_3_11912326batch_normalization_3_11912328batch_normalization_3_11912330*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_119121322/
-batch_normalization_3/StatefulPartitionedCall╧
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_119121982#
!dropout_1/StatefulPartitionedCall√
flatten/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_119122222
flatten/PartitionedCall▓
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_11912335dense_1_11912337*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_119122412!
dense_1/StatefulPartitionedCallИ
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         ::::::::::::::2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
├
d
E__inference_dropout_layer_call_and_return_conditional_losses_11912063

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
█)
╙
J__inference_sequential_1_layer_call_and_return_conditional_losses_11912414

inputs
conv2d_11912377
conv2d_11912379"
batch_normalization_2_11912382"
batch_normalization_2_11912384"
batch_normalization_2_11912386"
batch_normalization_2_11912388
conv2d_1_11912392
conv2d_1_11912394"
batch_normalization_3_11912397"
batch_normalization_3_11912399"
batch_normalization_3_11912401"
batch_normalization_3_11912403
dense_1_11912408
dense_1_11912410
identityИв-batch_normalization_2/StatefulPartitionedCallв-batch_normalization_3/StatefulPartitionedCallвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallвdense_1/StatefulPartitionedCallЫ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_11912377conv2d_11912379*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_119119642 
conv2d/StatefulPartitionedCall╦
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_2_11912382batch_normalization_2_11912384batch_normalization_2_11912386batch_normalization_2_11912388*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_119120152/
-batch_normalization_2/StatefulPartitionedCallО
dropout/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_119120682
dropout/PartitionedCall└
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv2d_1_11912392conv2d_1_11912394*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_119120992"
 conv2d_1/StatefulPartitionedCall╬
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_3_11912397batch_normalization_3_11912399batch_normalization_3_11912401batch_normalization_3_11912403*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_119121502/
-batch_normalization_3/StatefulPartitionedCallХ
dropout_1/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_119122032
dropout_1/PartitionedCallє
flatten/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_119122222
flatten/PartitionedCall▓
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_11912408dense_1_11912410*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_119122412!
dense_1/StatefulPartitionedCall┬
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         ::::::::::::::2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ы
a
E__inference_reshape_layer_call_and_return_conditional_losses_11911507

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2
Reshape/shape/3║
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:         А2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А1:P L
(
_output_shapes
:         А1
 
_user_specified_nameinputs
э)
┘
J__inference_sequential_1_layer_call_and_return_conditional_losses_11912298
conv2d_input
conv2d_11912261
conv2d_11912263"
batch_normalization_2_11912266"
batch_normalization_2_11912268"
batch_normalization_2_11912270"
batch_normalization_2_11912272
conv2d_1_11912276
conv2d_1_11912278"
batch_normalization_3_11912281"
batch_normalization_3_11912283"
batch_normalization_3_11912285"
batch_normalization_3_11912287
dense_1_11912292
dense_1_11912294
identityИв-batch_normalization_2/StatefulPartitionedCallв-batch_normalization_3/StatefulPartitionedCallвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallвdense_1/StatefulPartitionedCallб
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_11912261conv2d_11912263*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_119119642 
conv2d/StatefulPartitionedCall╦
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_2_11912266batch_normalization_2_11912268batch_normalization_2_11912270batch_normalization_2_11912272*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_119120152/
-batch_normalization_2/StatefulPartitionedCallО
dropout/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_119120682
dropout/PartitionedCall└
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv2d_1_11912276conv2d_1_11912278*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_119120992"
 conv2d_1/StatefulPartitionedCall╬
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_3_11912281batch_normalization_3_11912283batch_normalization_3_11912285batch_normalization_3_11912287*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_119121502/
-batch_normalization_3/StatefulPartitionedCallХ
dropout_1/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_119122032
dropout_1/PartitionedCallє
flatten/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_119122222
flatten/PartitionedCall▓
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_11912292dense_1_11912294*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_119122412!
dense_1/StatefulPartitionedCall┬
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         ::::::::::::::2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:] Y
/
_output_shapes
:         
&
_user_specified_nameconv2d_input
Ї	
▐
E__inference_dense_1_layer_call_and_return_conditional_losses_11915002

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А1*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
SigmoidР
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А1::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А1
 
_user_specified_nameinputs
╩є
┴1
$__inference__traced_restore_11915572
file_prefix
assignvariableop_yogi_iter"
assignvariableop_1_yogi_beta_1"
assignvariableop_2_yogi_beta_2!
assignvariableop_3_yogi_decay#
assignvariableop_4_yogi_epsilon6
2assignvariableop_5_yogi_l1_regularization_strength6
2assignvariableop_6_yogi_l2_regularization_strength)
%assignvariableop_7_yogi_learning_rate#
assignvariableop_8_dense_kernel!
assignvariableop_9_dense_bias1
-assignvariableop_10_batch_normalization_gamma0
,assignvariableop_11_batch_normalization_beta/
+assignvariableop_12_conv2d_transpose_kernel-
)assignvariableop_13_conv2d_transpose_bias3
/assignvariableop_14_batch_normalization_1_gamma2
.assignvariableop_15_batch_normalization_1_beta1
-assignvariableop_16_conv2d_transpose_1_kernel/
+assignvariableop_17_conv2d_transpose_1_bias7
3assignvariableop_18_batch_normalization_moving_mean;
7assignvariableop_19_batch_normalization_moving_variance9
5assignvariableop_20_batch_normalization_1_moving_mean=
9assignvariableop_21_batch_normalization_1_moving_variance%
!assignvariableop_22_conv2d_kernel#
assignvariableop_23_conv2d_bias3
/assignvariableop_24_batch_normalization_2_gamma2
.assignvariableop_25_batch_normalization_2_beta9
5assignvariableop_26_batch_normalization_2_moving_mean=
9assignvariableop_27_batch_normalization_2_moving_variance'
#assignvariableop_28_conv2d_1_kernel%
!assignvariableop_29_conv2d_1_bias3
/assignvariableop_30_batch_normalization_3_gamma2
.assignvariableop_31_batch_normalization_3_beta9
5assignvariableop_32_batch_normalization_3_moving_mean=
9assignvariableop_33_batch_normalization_3_moving_variance&
"assignvariableop_34_dense_1_kernel$
 assignvariableop_35_dense_1_bias#
assignvariableop_36_yogi_iter_1%
!assignvariableop_37_yogi_beta_1_1%
!assignvariableop_38_yogi_beta_2_1$
 assignvariableop_39_yogi_decay_1&
"assignvariableop_40_yogi_epsilon_19
5assignvariableop_41_yogi_l1_regularization_strength_19
5assignvariableop_42_yogi_l2_regularization_strength_1,
(assignvariableop_43_yogi_learning_rate_1
assignvariableop_44_total
assignvariableop_45_count
assignvariableop_46_total_1
assignvariableop_47_count_1+
'assignvariableop_48_yogi_dense_kernel_v)
%assignvariableop_49_yogi_dense_bias_v8
4assignvariableop_50_yogi_batch_normalization_gamma_v7
3assignvariableop_51_yogi_batch_normalization_beta_v6
2assignvariableop_52_yogi_conv2d_transpose_kernel_v4
0assignvariableop_53_yogi_conv2d_transpose_bias_v:
6assignvariableop_54_yogi_batch_normalization_1_gamma_v9
5assignvariableop_55_yogi_batch_normalization_1_beta_v8
4assignvariableop_56_yogi_conv2d_transpose_1_kernel_v6
2assignvariableop_57_yogi_conv2d_transpose_1_bias_v+
'assignvariableop_58_yogi_dense_kernel_m)
%assignvariableop_59_yogi_dense_bias_m8
4assignvariableop_60_yogi_batch_normalization_gamma_m7
3assignvariableop_61_yogi_batch_normalization_beta_m6
2assignvariableop_62_yogi_conv2d_transpose_kernel_m4
0assignvariableop_63_yogi_conv2d_transpose_bias_m:
6assignvariableop_64_yogi_batch_normalization_1_gamma_m9
5assignvariableop_65_yogi_batch_normalization_1_beta_m8
4assignvariableop_66_yogi_conv2d_transpose_1_kernel_m6
2assignvariableop_67_yogi_conv2d_transpose_1_bias_m,
(assignvariableop_68_yogi_conv2d_kernel_v*
&assignvariableop_69_yogi_conv2d_bias_v:
6assignvariableop_70_yogi_batch_normalization_2_gamma_v9
5assignvariableop_71_yogi_batch_normalization_2_beta_v.
*assignvariableop_72_yogi_conv2d_1_kernel_v,
(assignvariableop_73_yogi_conv2d_1_bias_v:
6assignvariableop_74_yogi_batch_normalization_3_gamma_v9
5assignvariableop_75_yogi_batch_normalization_3_beta_v-
)assignvariableop_76_yogi_dense_1_kernel_v+
'assignvariableop_77_yogi_dense_1_bias_v,
(assignvariableop_78_yogi_conv2d_kernel_m*
&assignvariableop_79_yogi_conv2d_bias_m:
6assignvariableop_80_yogi_batch_normalization_2_gamma_m9
5assignvariableop_81_yogi_batch_normalization_2_beta_m.
*assignvariableop_82_yogi_conv2d_1_kernel_m,
(assignvariableop_83_yogi_conv2d_1_bias_m:
6assignvariableop_84_yogi_batch_normalization_3_gamma_m9
5assignvariableop_85_yogi_batch_normalization_3_beta_m-
)assignvariableop_86_yogi_dense_1_kernel_m+
'assignvariableop_87_yogi_dense_1_bias_m
identity_89ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_77вAssignVariableOp_78вAssignVariableOp_79вAssignVariableOp_8вAssignVariableOp_80вAssignVariableOp_81вAssignVariableOp_82вAssignVariableOp_83вAssignVariableOp_84вAssignVariableOp_85вAssignVariableOp_86вAssignVariableOp_87вAssignVariableOp_9я.
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Y*
dtype0*√-
valueё-Bю-YB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB,optimizer/epsilon/.ATTRIBUTES/VARIABLE_VALUEB?optimizer/l1_regularization_strength/.ATTRIBUTES/VARIABLE_VALUEB?optimizer/l2_regularization_strength/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-1/optimizer/epsilon/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/optimizer/l1_regularization_strength/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/optimizer/l2_regularization_strength/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/22/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/23/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/26/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/27/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/22/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/23/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/26/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/27/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names├
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Y*
dtype0*╟
value╜B║YB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesы
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*·
_output_shapesч
ф:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*g
dtypes]
[2Y		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

IdentityЩ
AssignVariableOpAssignVariableOpassignvariableop_yogi_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1г
AssignVariableOp_1AssignVariableOpassignvariableop_1_yogi_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2г
AssignVariableOp_2AssignVariableOpassignvariableop_2_yogi_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3в
AssignVariableOp_3AssignVariableOpassignvariableop_3_yogi_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4д
AssignVariableOp_4AssignVariableOpassignvariableop_4_yogi_epsilonIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5╖
AssignVariableOp_5AssignVariableOp2assignvariableop_5_yogi_l1_regularization_strengthIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6╖
AssignVariableOp_6AssignVariableOp2assignvariableop_6_yogi_l2_regularization_strengthIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7к
AssignVariableOp_7AssignVariableOp%assignvariableop_7_yogi_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8д
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9в
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10╡
AssignVariableOp_10AssignVariableOp-assignvariableop_10_batch_normalization_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11┤
AssignVariableOp_11AssignVariableOp,assignvariableop_11_batch_normalization_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12│
AssignVariableOp_12AssignVariableOp+assignvariableop_12_conv2d_transpose_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13▒
AssignVariableOp_13AssignVariableOp)assignvariableop_13_conv2d_transpose_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14╖
AssignVariableOp_14AssignVariableOp/assignvariableop_14_batch_normalization_1_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15╢
AssignVariableOp_15AssignVariableOp.assignvariableop_15_batch_normalization_1_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16╡
AssignVariableOp_16AssignVariableOp-assignvariableop_16_conv2d_transpose_1_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17│
AssignVariableOp_17AssignVariableOp+assignvariableop_17_conv2d_transpose_1_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18╗
AssignVariableOp_18AssignVariableOp3assignvariableop_18_batch_normalization_moving_meanIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19┐
AssignVariableOp_19AssignVariableOp7assignvariableop_19_batch_normalization_moving_varianceIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20╜
AssignVariableOp_20AssignVariableOp5assignvariableop_20_batch_normalization_1_moving_meanIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21┴
AssignVariableOp_21AssignVariableOp9assignvariableop_21_batch_normalization_1_moving_varianceIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22й
AssignVariableOp_22AssignVariableOp!assignvariableop_22_conv2d_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23з
AssignVariableOp_23AssignVariableOpassignvariableop_23_conv2d_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24╖
AssignVariableOp_24AssignVariableOp/assignvariableop_24_batch_normalization_2_gammaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25╢
AssignVariableOp_25AssignVariableOp.assignvariableop_25_batch_normalization_2_betaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26╜
AssignVariableOp_26AssignVariableOp5assignvariableop_26_batch_normalization_2_moving_meanIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27┴
AssignVariableOp_27AssignVariableOp9assignvariableop_27_batch_normalization_2_moving_varianceIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28л
AssignVariableOp_28AssignVariableOp#assignvariableop_28_conv2d_1_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29й
AssignVariableOp_29AssignVariableOp!assignvariableop_29_conv2d_1_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30╖
AssignVariableOp_30AssignVariableOp/assignvariableop_30_batch_normalization_3_gammaIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31╢
AssignVariableOp_31AssignVariableOp.assignvariableop_31_batch_normalization_3_betaIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32╜
AssignVariableOp_32AssignVariableOp5assignvariableop_32_batch_normalization_3_moving_meanIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33┴
AssignVariableOp_33AssignVariableOp9assignvariableop_33_batch_normalization_3_moving_varianceIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34к
AssignVariableOp_34AssignVariableOp"assignvariableop_34_dense_1_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35и
AssignVariableOp_35AssignVariableOp assignvariableop_35_dense_1_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_36з
AssignVariableOp_36AssignVariableOpassignvariableop_36_yogi_iter_1Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37й
AssignVariableOp_37AssignVariableOp!assignvariableop_37_yogi_beta_1_1Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38й
AssignVariableOp_38AssignVariableOp!assignvariableop_38_yogi_beta_2_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39и
AssignVariableOp_39AssignVariableOp assignvariableop_39_yogi_decay_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40к
AssignVariableOp_40AssignVariableOp"assignvariableop_40_yogi_epsilon_1Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41╜
AssignVariableOp_41AssignVariableOp5assignvariableop_41_yogi_l1_regularization_strength_1Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42╜
AssignVariableOp_42AssignVariableOp5assignvariableop_42_yogi_l2_regularization_strength_1Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43░
AssignVariableOp_43AssignVariableOp(assignvariableop_43_yogi_learning_rate_1Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44б
AssignVariableOp_44AssignVariableOpassignvariableop_44_totalIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45б
AssignVariableOp_45AssignVariableOpassignvariableop_45_countIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46г
AssignVariableOp_46AssignVariableOpassignvariableop_46_total_1Identity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47г
AssignVariableOp_47AssignVariableOpassignvariableop_47_count_1Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48п
AssignVariableOp_48AssignVariableOp'assignvariableop_48_yogi_dense_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49н
AssignVariableOp_49AssignVariableOp%assignvariableop_49_yogi_dense_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50╝
AssignVariableOp_50AssignVariableOp4assignvariableop_50_yogi_batch_normalization_gamma_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51╗
AssignVariableOp_51AssignVariableOp3assignvariableop_51_yogi_batch_normalization_beta_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52║
AssignVariableOp_52AssignVariableOp2assignvariableop_52_yogi_conv2d_transpose_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53╕
AssignVariableOp_53AssignVariableOp0assignvariableop_53_yogi_conv2d_transpose_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54╛
AssignVariableOp_54AssignVariableOp6assignvariableop_54_yogi_batch_normalization_1_gamma_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55╜
AssignVariableOp_55AssignVariableOp5assignvariableop_55_yogi_batch_normalization_1_beta_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56╝
AssignVariableOp_56AssignVariableOp4assignvariableop_56_yogi_conv2d_transpose_1_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57║
AssignVariableOp_57AssignVariableOp2assignvariableop_57_yogi_conv2d_transpose_1_bias_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58п
AssignVariableOp_58AssignVariableOp'assignvariableop_58_yogi_dense_kernel_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59н
AssignVariableOp_59AssignVariableOp%assignvariableop_59_yogi_dense_bias_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60╝
AssignVariableOp_60AssignVariableOp4assignvariableop_60_yogi_batch_normalization_gamma_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61╗
AssignVariableOp_61AssignVariableOp3assignvariableop_61_yogi_batch_normalization_beta_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62║
AssignVariableOp_62AssignVariableOp2assignvariableop_62_yogi_conv2d_transpose_kernel_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63╕
AssignVariableOp_63AssignVariableOp0assignvariableop_63_yogi_conv2d_transpose_bias_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64╛
AssignVariableOp_64AssignVariableOp6assignvariableop_64_yogi_batch_normalization_1_gamma_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65╜
AssignVariableOp_65AssignVariableOp5assignvariableop_65_yogi_batch_normalization_1_beta_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66╝
AssignVariableOp_66AssignVariableOp4assignvariableop_66_yogi_conv2d_transpose_1_kernel_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67║
AssignVariableOp_67AssignVariableOp2assignvariableop_67_yogi_conv2d_transpose_1_bias_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68░
AssignVariableOp_68AssignVariableOp(assignvariableop_68_yogi_conv2d_kernel_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69о
AssignVariableOp_69AssignVariableOp&assignvariableop_69_yogi_conv2d_bias_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70╛
AssignVariableOp_70AssignVariableOp6assignvariableop_70_yogi_batch_normalization_2_gamma_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71╜
AssignVariableOp_71AssignVariableOp5assignvariableop_71_yogi_batch_normalization_2_beta_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72▓
AssignVariableOp_72AssignVariableOp*assignvariableop_72_yogi_conv2d_1_kernel_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73░
AssignVariableOp_73AssignVariableOp(assignvariableop_73_yogi_conv2d_1_bias_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74╛
AssignVariableOp_74AssignVariableOp6assignvariableop_74_yogi_batch_normalization_3_gamma_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75╜
AssignVariableOp_75AssignVariableOp5assignvariableop_75_yogi_batch_normalization_3_beta_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76▒
AssignVariableOp_76AssignVariableOp)assignvariableop_76_yogi_dense_1_kernel_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77п
AssignVariableOp_77AssignVariableOp'assignvariableop_77_yogi_dense_1_bias_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78░
AssignVariableOp_78AssignVariableOp(assignvariableop_78_yogi_conv2d_kernel_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79о
AssignVariableOp_79AssignVariableOp&assignvariableop_79_yogi_conv2d_bias_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80╛
AssignVariableOp_80AssignVariableOp6assignvariableop_80_yogi_batch_normalization_2_gamma_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81╜
AssignVariableOp_81AssignVariableOp5assignvariableop_81_yogi_batch_normalization_2_beta_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82▓
AssignVariableOp_82AssignVariableOp*assignvariableop_82_yogi_conv2d_1_kernel_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83░
AssignVariableOp_83AssignVariableOp(assignvariableop_83_yogi_conv2d_1_bias_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84╛
AssignVariableOp_84AssignVariableOp6assignvariableop_84_yogi_batch_normalization_3_gamma_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85╜
AssignVariableOp_85AssignVariableOp5assignvariableop_85_yogi_batch_normalization_3_beta_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86▒
AssignVariableOp_86AssignVariableOp)assignvariableop_86_yogi_dense_1_kernel_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87п
AssignVariableOp_87AssignVariableOp'assignvariableop_87_yogi_dense_1_bias_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_879
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpю
Identity_88Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_88с
Identity_89IdentityIdentity_88:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_89"#
identity_89Identity_89:output:0*ў
_input_shapesх
т: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
┐
a
E__inference_flatten_layer_call_and_return_conditional_losses_11912222

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А12	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А12

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ж
л
8__inference_batch_normalization_2_layer_call_fn_11914713

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall║
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_119118312
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
З
Ў
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11912150

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╧
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3█
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
├
Ў
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11914687

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╧
Ў
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11911931

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
√
Ў
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11911997

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╧
Ъ
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11911333

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ш
c
E__inference_dropout_layer_call_and_return_conditional_losses_11912068

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ю
e
G__inference_dropout_1_layer_call_and_return_conditional_losses_11912203

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╙
Ы
/__inference_sequential_2_layer_call_fn_11913680

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_2_layer_call_and_return_conditional_losses_119130462
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:         А::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ж

╗
/__inference_sequential_1_layer_call_fn_11914177

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_119126282
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:+                           ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
ж

╗
/__inference_sequential_1_layer_call_fn_11914210

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_119126992
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:+                           ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
╖
F
*__inference_dropout_layer_call_fn_11914802

inputs
identity╬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_119120682
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
т
И
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_11911208

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpУ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А1*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЙ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А12
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А12
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А1*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А12
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А12
batchnorm/mul_1Щ
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:А1*
dtype02
batchnorm/ReadVariableOp_1Ж
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А12
batchnorm/mul_2Щ
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:А1*
dtype02
batchnorm/ReadVariableOp_2Д
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А12
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А12
batchnorm/add_1▄
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А12

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А1::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А1
 
_user_specified_nameinputs
╘Ь
щ
J__inference_sequential_2_layer_call_and_return_conditional_losses_11913558

inputs3
/sequential_dense_matmul_readvariableop_resource4
0sequential_dense_biasadd_readvariableop_resourceD
@sequential_batch_normalization_batchnorm_readvariableop_resourceH
Dsequential_batch_normalization_batchnorm_mul_readvariableop_resourceF
Bsequential_batch_normalization_batchnorm_readvariableop_1_resourceF
Bsequential_batch_normalization_batchnorm_readvariableop_2_resourceH
Dsequential_conv2d_transpose_conv2d_transpose_readvariableop_resource?
;sequential_conv2d_transpose_biasadd_readvariableop_resource<
8sequential_batch_normalization_1_readvariableop_resource>
:sequential_batch_normalization_1_readvariableop_1_resourceM
Isequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resourceO
Ksequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceJ
Fsequential_conv2d_transpose_1_conv2d_transpose_readvariableop_resourceA
=sequential_conv2d_transpose_1_biasadd_readvariableop_resource6
2sequential_1_conv2d_conv2d_readvariableop_resource7
3sequential_1_conv2d_biasadd_readvariableop_resource>
:sequential_1_batch_normalization_2_readvariableop_resource@
<sequential_1_batch_normalization_2_readvariableop_1_resourceO
Ksequential_1_batch_normalization_2_fusedbatchnormv3_readvariableop_resourceQ
Msequential_1_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource8
4sequential_1_conv2d_1_conv2d_readvariableop_resource9
5sequential_1_conv2d_1_biasadd_readvariableop_resource>
:sequential_1_batch_normalization_3_readvariableop_resource@
<sequential_1_batch_normalization_3_readvariableop_1_resourceO
Ksequential_1_batch_normalization_3_fusedbatchnormv3_readvariableop_resourceQ
Msequential_1_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource7
3sequential_1_dense_1_matmul_readvariableop_resource8
4sequential_1_dense_1_biasadd_readvariableop_resource
identityИв7sequential/batch_normalization/batchnorm/ReadVariableOpв9sequential/batch_normalization/batchnorm/ReadVariableOp_1в9sequential/batch_normalization/batchnorm/ReadVariableOp_2в;sequential/batch_normalization/batchnorm/mul/ReadVariableOpв@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpвBsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в/sequential/batch_normalization_1/ReadVariableOpв1sequential/batch_normalization_1/ReadVariableOp_1в2sequential/conv2d_transpose/BiasAdd/ReadVariableOpв;sequential/conv2d_transpose/conv2d_transpose/ReadVariableOpв4sequential/conv2d_transpose_1/BiasAdd/ReadVariableOpв=sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOpв'sequential/dense/BiasAdd/ReadVariableOpв&sequential/dense/MatMul/ReadVariableOpвBsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpвDsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1в1sequential_1/batch_normalization_2/ReadVariableOpв3sequential_1/batch_normalization_2/ReadVariableOp_1вBsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOpвDsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1в1sequential_1/batch_normalization_3/ReadVariableOpв3sequential_1/batch_normalization_3/ReadVariableOp_1в*sequential_1/conv2d/BiasAdd/ReadVariableOpв)sequential_1/conv2d/Conv2D/ReadVariableOpв,sequential_1/conv2d_1/BiasAdd/ReadVariableOpв+sequential_1/conv2d_1/Conv2D/ReadVariableOpв+sequential_1/dense_1/BiasAdd/ReadVariableOpв*sequential_1/dense_1/MatMul/ReadVariableOp┬
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА1*
dtype02(
&sequential/dense/MatMul/ReadVariableOpз
sequential/dense/MatMulMatMulinputs.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А12
sequential/dense/MatMul└
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:А1*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp╞
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А12
sequential/dense/BiasAdd
sequential/dense/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sequential/dense/Gelu/mul/x╣
sequential/dense/Gelu/mulMul$sequential/dense/Gelu/mul/x:output:0!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         А12
sequential/dense/Gelu/mulБ
sequential/dense/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
sequential/dense/Gelu/Cast/x╞
sequential/dense/Gelu/truedivRealDiv!sequential/dense/BiasAdd:output:0%sequential/dense/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:         А12
sequential/dense/Gelu/truedivУ
sequential/dense/Gelu/ErfErf!sequential/dense/Gelu/truediv:z:0*
T0*(
_output_shapes
:         А12
sequential/dense/Gelu/Erf
sequential/dense/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sequential/dense/Gelu/add/x╖
sequential/dense/Gelu/addAddV2$sequential/dense/Gelu/add/x:output:0sequential/dense/Gelu/Erf:y:0*
T0*(
_output_shapes
:         А12
sequential/dense/Gelu/add▓
sequential/dense/Gelu/mul_1Mulsequential/dense/Gelu/mul:z:0sequential/dense/Gelu/add:z:0*
T0*(
_output_shapes
:         А12
sequential/dense/Gelu/mul_1Ё
7sequential/batch_normalization/batchnorm/ReadVariableOpReadVariableOp@sequential_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:А1*
dtype029
7sequential/batch_normalization/batchnorm/ReadVariableOpе
.sequential/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:20
.sequential/batch_normalization/batchnorm/add/yЕ
,sequential/batch_normalization/batchnorm/addAddV2?sequential/batch_normalization/batchnorm/ReadVariableOp:value:07sequential/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А12.
,sequential/batch_normalization/batchnorm/add┴
.sequential/batch_normalization/batchnorm/RsqrtRsqrt0sequential/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:А120
.sequential/batch_normalization/batchnorm/Rsqrt№
;sequential/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpDsequential_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А1*
dtype02=
;sequential/batch_normalization/batchnorm/mul/ReadVariableOpВ
,sequential/batch_normalization/batchnorm/mulMul2sequential/batch_normalization/batchnorm/Rsqrt:y:0Csequential/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А12.
,sequential/batch_normalization/batchnorm/mulэ
.sequential/batch_normalization/batchnorm/mul_1Mulsequential/dense/Gelu/mul_1:z:00sequential/batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А120
.sequential/batch_normalization/batchnorm/mul_1Ў
9sequential/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOpBsequential_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:А1*
dtype02;
9sequential/batch_normalization/batchnorm/ReadVariableOp_1В
.sequential/batch_normalization/batchnorm/mul_2MulAsequential/batch_normalization/batchnorm/ReadVariableOp_1:value:00sequential/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:А120
.sequential/batch_normalization/batchnorm/mul_2Ў
9sequential/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOpBsequential_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:А1*
dtype02;
9sequential/batch_normalization/batchnorm/ReadVariableOp_2А
,sequential/batch_normalization/batchnorm/subSubAsequential/batch_normalization/batchnorm/ReadVariableOp_2:value:02sequential/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А12.
,sequential/batch_normalization/batchnorm/subВ
.sequential/batch_normalization/batchnorm/add_1AddV22sequential/batch_normalization/batchnorm/mul_1:z:00sequential/batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А120
.sequential/batch_normalization/batchnorm/add_1Ц
sequential/reshape/ShapeShape2sequential/batch_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
sequential/reshape/ShapeЪ
&sequential/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential/reshape/strided_slice/stackЮ
(sequential/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/reshape/strided_slice/stack_1Ю
(sequential/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/reshape/strided_slice/stack_2╘
 sequential/reshape/strided_sliceStridedSlice!sequential/reshape/Shape:output:0/sequential/reshape/strided_slice/stack:output:01sequential/reshape/strided_slice/stack_1:output:01sequential/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential/reshape/strided_sliceК
"sequential/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"sequential/reshape/Reshape/shape/1К
"sequential/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"sequential/reshape/Reshape/shape/2Л
"sequential/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2$
"sequential/reshape/Reshape/shape/3м
 sequential/reshape/Reshape/shapePack)sequential/reshape/strided_slice:output:0+sequential/reshape/Reshape/shape/1:output:0+sequential/reshape/Reshape/shape/2:output:0+sequential/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2"
 sequential/reshape/Reshape/shape▌
sequential/reshape/ReshapeReshape2sequential/batch_normalization/batchnorm/add_1:z:0)sequential/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:         А2
sequential/reshape/ReshapeЩ
!sequential/conv2d_transpose/ShapeShape#sequential/reshape/Reshape:output:0*
T0*
_output_shapes
:2#
!sequential/conv2d_transpose/Shapeм
/sequential/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential/conv2d_transpose/strided_slice/stack░
1sequential/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential/conv2d_transpose/strided_slice/stack_1░
1sequential/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential/conv2d_transpose/strided_slice/stack_2К
)sequential/conv2d_transpose/strided_sliceStridedSlice*sequential/conv2d_transpose/Shape:output:08sequential/conv2d_transpose/strided_slice/stack:output:0:sequential/conv2d_transpose/strided_slice/stack_1:output:0:sequential/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)sequential/conv2d_transpose/strided_sliceМ
#sequential/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/conv2d_transpose/stack/1М
#sequential/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/conv2d_transpose/stack/2М
#sequential/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2%
#sequential/conv2d_transpose/stack/3║
!sequential/conv2d_transpose/stackPack2sequential/conv2d_transpose/strided_slice:output:0,sequential/conv2d_transpose/stack/1:output:0,sequential/conv2d_transpose/stack/2:output:0,sequential/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!sequential/conv2d_transpose/stack░
1sequential/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential/conv2d_transpose/strided_slice_1/stack┤
3sequential/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential/conv2d_transpose/strided_slice_1/stack_1┤
3sequential/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential/conv2d_transpose/strided_slice_1/stack_2Ф
+sequential/conv2d_transpose/strided_slice_1StridedSlice*sequential/conv2d_transpose/stack:output:0:sequential/conv2d_transpose/strided_slice_1/stack:output:0<sequential/conv2d_transpose/strided_slice_1/stack_1:output:0<sequential/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential/conv2d_transpose/strided_slice_1И
;sequential/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpDsequential_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype02=
;sequential/conv2d_transpose/conv2d_transpose/ReadVariableOpы
,sequential/conv2d_transpose/conv2d_transposeConv2DBackpropInput*sequential/conv2d_transpose/stack:output:0Csequential/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0#sequential/reshape/Reshape:output:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2.
,sequential/conv2d_transpose/conv2d_transposeр
2sequential/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp;sequential_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype024
2sequential/conv2d_transpose/BiasAdd/ReadVariableOpВ
#sequential/conv2d_transpose/BiasAddBiasAdd5sequential/conv2d_transpose/conv2d_transpose:output:0:sequential/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2%
#sequential/conv2d_transpose/BiasAddХ
&sequential/conv2d_transpose/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&sequential/conv2d_transpose/Gelu/mul/xь
$sequential/conv2d_transpose/Gelu/mulMul/sequential/conv2d_transpose/Gelu/mul/x:output:0,sequential/conv2d_transpose/BiasAdd:output:0*
T0*/
_output_shapes
:         @2&
$sequential/conv2d_transpose/Gelu/mulЧ
'sequential/conv2d_transpose/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2)
'sequential/conv2d_transpose/Gelu/Cast/x∙
(sequential/conv2d_transpose/Gelu/truedivRealDiv,sequential/conv2d_transpose/BiasAdd:output:00sequential/conv2d_transpose/Gelu/Cast/x:output:0*
T0*/
_output_shapes
:         @2*
(sequential/conv2d_transpose/Gelu/truediv╗
$sequential/conv2d_transpose/Gelu/ErfErf,sequential/conv2d_transpose/Gelu/truediv:z:0*
T0*/
_output_shapes
:         @2&
$sequential/conv2d_transpose/Gelu/ErfХ
&sequential/conv2d_transpose/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2(
&sequential/conv2d_transpose/Gelu/add/xъ
$sequential/conv2d_transpose/Gelu/addAddV2/sequential/conv2d_transpose/Gelu/add/x:output:0(sequential/conv2d_transpose/Gelu/Erf:y:0*
T0*/
_output_shapes
:         @2&
$sequential/conv2d_transpose/Gelu/addх
&sequential/conv2d_transpose/Gelu/mul_1Mul(sequential/conv2d_transpose/Gelu/mul:z:0(sequential/conv2d_transpose/Gelu/add:z:0*
T0*/
_output_shapes
:         @2(
&sequential/conv2d_transpose/Gelu/mul_1╫
/sequential/batch_normalization_1/ReadVariableOpReadVariableOp8sequential_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential/batch_normalization_1/ReadVariableOp▌
1sequential/batch_normalization_1/ReadVariableOp_1ReadVariableOp:sequential_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype023
1sequential/batch_normalization_1/ReadVariableOp_1К
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02B
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpР
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02D
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1┤
1sequential/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3*sequential/conv2d_transpose/Gelu/mul_1:z:07sequential/batch_normalization_1/ReadVariableOp:value:09sequential/batch_normalization_1/ReadVariableOp_1:value:0Hsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 23
1sequential/batch_normalization_1/FusedBatchNormV3п
#sequential/conv2d_transpose_1/ShapeShape5sequential/batch_normalization_1/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2%
#sequential/conv2d_transpose_1/Shape░
1sequential/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential/conv2d_transpose_1/strided_slice/stack┤
3sequential/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential/conv2d_transpose_1/strided_slice/stack_1┤
3sequential/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential/conv2d_transpose_1/strided_slice/stack_2Ц
+sequential/conv2d_transpose_1/strided_sliceStridedSlice,sequential/conv2d_transpose_1/Shape:output:0:sequential/conv2d_transpose_1/strided_slice/stack:output:0<sequential/conv2d_transpose_1/strided_slice/stack_1:output:0<sequential/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential/conv2d_transpose_1/strided_sliceР
%sequential/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/conv2d_transpose_1/stack/1Р
%sequential/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/conv2d_transpose_1/stack/2Р
%sequential/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/conv2d_transpose_1/stack/3╞
#sequential/conv2d_transpose_1/stackPack4sequential/conv2d_transpose_1/strided_slice:output:0.sequential/conv2d_transpose_1/stack/1:output:0.sequential/conv2d_transpose_1/stack/2:output:0.sequential/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential/conv2d_transpose_1/stack┤
3sequential/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential/conv2d_transpose_1/strided_slice_1/stack╕
5sequential/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential/conv2d_transpose_1/strided_slice_1/stack_1╕
5sequential/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential/conv2d_transpose_1/strided_slice_1/stack_2а
-sequential/conv2d_transpose_1/strided_slice_1StridedSlice,sequential/conv2d_transpose_1/stack:output:0<sequential/conv2d_transpose_1/strided_slice_1/stack:output:0>sequential/conv2d_transpose_1/strided_slice_1/stack_1:output:0>sequential/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential/conv2d_transpose_1/strided_slice_1Н
=sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02?
=sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOpЕ
.sequential/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput,sequential/conv2d_transpose_1/stack:output:0Esequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:05sequential/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
20
.sequential/conv2d_transpose_1/conv2d_transposeц
4sequential/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp=sequential_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4sequential/conv2d_transpose_1/BiasAdd/ReadVariableOpК
%sequential/conv2d_transpose_1/BiasAddBiasAdd7sequential/conv2d_transpose_1/conv2d_transpose:output:0<sequential/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2'
%sequential/conv2d_transpose_1/BiasAdd├
%sequential/conv2d_transpose_1/SigmoidSigmoid.sequential/conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:         2'
%sequential/conv2d_transpose_1/Sigmoid╤
)sequential_1/conv2d/Conv2D/ReadVariableOpReadVariableOp2sequential_1_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02+
)sequential_1/conv2d/Conv2D/ReadVariableOpВ
sequential_1/conv2d/Conv2DConv2D)sequential/conv2d_transpose_1/Sigmoid:y:01sequential_1/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
sequential_1/conv2d/Conv2D╚
*sequential_1/conv2d/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential_1/conv2d/BiasAdd/ReadVariableOp╪
sequential_1/conv2d/BiasAddBiasAdd#sequential_1/conv2d/Conv2D:output:02sequential_1/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
sequential_1/conv2d/BiasAddЕ
sequential_1/conv2d/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
sequential_1/conv2d/Gelu/mul/x╠
sequential_1/conv2d/Gelu/mulMul'sequential_1/conv2d/Gelu/mul/x:output:0$sequential_1/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
sequential_1/conv2d/Gelu/mulЗ
sequential_1/conv2d/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2!
sequential_1/conv2d/Gelu/Cast/x┘
 sequential_1/conv2d/Gelu/truedivRealDiv$sequential_1/conv2d/BiasAdd:output:0(sequential_1/conv2d/Gelu/Cast/x:output:0*
T0*/
_output_shapes
:         @2"
 sequential_1/conv2d/Gelu/truedivг
sequential_1/conv2d/Gelu/ErfErf$sequential_1/conv2d/Gelu/truediv:z:0*
T0*/
_output_shapes
:         @2
sequential_1/conv2d/Gelu/ErfЕ
sequential_1/conv2d/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2 
sequential_1/conv2d/Gelu/add/x╩
sequential_1/conv2d/Gelu/addAddV2'sequential_1/conv2d/Gelu/add/x:output:0 sequential_1/conv2d/Gelu/Erf:y:0*
T0*/
_output_shapes
:         @2
sequential_1/conv2d/Gelu/add┼
sequential_1/conv2d/Gelu/mul_1Mul sequential_1/conv2d/Gelu/mul:z:0 sequential_1/conv2d/Gelu/add:z:0*
T0*/
_output_shapes
:         @2 
sequential_1/conv2d/Gelu/mul_1▌
1sequential_1/batch_normalization_2/ReadVariableOpReadVariableOp:sequential_1_batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype023
1sequential_1/batch_normalization_2/ReadVariableOpу
3sequential_1/batch_normalization_2/ReadVariableOp_1ReadVariableOp<sequential_1_batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype025
3sequential_1/batch_normalization_2/ReadVariableOp_1Р
Bsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_1_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02D
Bsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpЦ
Dsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_1_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02F
Dsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1╕
3sequential_1/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3"sequential_1/conv2d/Gelu/mul_1:z:09sequential_1/batch_normalization_2/ReadVariableOp:value:0;sequential_1/batch_normalization_2/ReadVariableOp_1:value:0Jsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 25
3sequential_1/batch_normalization_2/FusedBatchNormV3╜
sequential_1/dropout/IdentityIdentity7sequential_1/batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @2
sequential_1/dropout/Identity╪
+sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02-
+sequential_1/conv2d_1/Conv2D/ReadVariableOpЖ
sequential_1/conv2d_1/Conv2DConv2D&sequential_1/dropout/Identity:output:03sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
sequential_1/conv2d_1/Conv2D╧
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpс
sequential_1/conv2d_1/BiasAddBiasAdd%sequential_1/conv2d_1/Conv2D:output:04sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
sequential_1/conv2d_1/BiasAddЙ
 sequential_1/conv2d_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 sequential_1/conv2d_1/Gelu/mul/x╒
sequential_1/conv2d_1/Gelu/mulMul)sequential_1/conv2d_1/Gelu/mul/x:output:0&sequential_1/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:         А2 
sequential_1/conv2d_1/Gelu/mulЛ
!sequential_1/conv2d_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2#
!sequential_1/conv2d_1/Gelu/Cast/xт
"sequential_1/conv2d_1/Gelu/truedivRealDiv&sequential_1/conv2d_1/BiasAdd:output:0*sequential_1/conv2d_1/Gelu/Cast/x:output:0*
T0*0
_output_shapes
:         А2$
"sequential_1/conv2d_1/Gelu/truedivк
sequential_1/conv2d_1/Gelu/ErfErf&sequential_1/conv2d_1/Gelu/truediv:z:0*
T0*0
_output_shapes
:         А2 
sequential_1/conv2d_1/Gelu/ErfЙ
 sequential_1/conv2d_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2"
 sequential_1/conv2d_1/Gelu/add/x╙
sequential_1/conv2d_1/Gelu/addAddV2)sequential_1/conv2d_1/Gelu/add/x:output:0"sequential_1/conv2d_1/Gelu/Erf:y:0*
T0*0
_output_shapes
:         А2 
sequential_1/conv2d_1/Gelu/add╬
 sequential_1/conv2d_1/Gelu/mul_1Mul"sequential_1/conv2d_1/Gelu/mul:z:0"sequential_1/conv2d_1/Gelu/add:z:0*
T0*0
_output_shapes
:         А2"
 sequential_1/conv2d_1/Gelu/mul_1▐
1sequential_1/batch_normalization_3/ReadVariableOpReadVariableOp:sequential_1_batch_normalization_3_readvariableop_resource*
_output_shapes	
:А*
dtype023
1sequential_1/batch_normalization_3/ReadVariableOpф
3sequential_1/batch_normalization_3/ReadVariableOp_1ReadVariableOp<sequential_1_batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype025
3sequential_1/batch_normalization_3/ReadVariableOp_1С
Bsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_1_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02D
Bsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOpЧ
Dsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_1_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02F
Dsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1┐
3sequential_1/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3$sequential_1/conv2d_1/Gelu/mul_1:z:09sequential_1/batch_normalization_3/ReadVariableOp:value:0;sequential_1/batch_normalization_3/ReadVariableOp_1:value:0Jsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 25
3sequential_1/batch_normalization_3/FusedBatchNormV3┬
sequential_1/dropout_1/IdentityIdentity7sequential_1/batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А2!
sequential_1/dropout_1/IdentityЙ
sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  2
sequential_1/flatten/Const╔
sequential_1/flatten/ReshapeReshape(sequential_1/dropout_1/Identity:output:0#sequential_1/flatten/Const:output:0*
T0*(
_output_shapes
:         А12
sequential_1/flatten/Reshape═
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	А1*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp╤
sequential_1/dense_1/MatMulMatMul%sequential_1/flatten/Reshape:output:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_1/dense_1/MatMul╦
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp╒
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_1/dense_1/BiasAddа
sequential_1/dense_1/SigmoidSigmoid%sequential_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2
sequential_1/dense_1/SigmoidМ
IdentityIdentity sequential_1/dense_1/Sigmoid:y:08^sequential/batch_normalization/batchnorm/ReadVariableOp:^sequential/batch_normalization/batchnorm/ReadVariableOp_1:^sequential/batch_normalization/batchnorm/ReadVariableOp_2<^sequential/batch_normalization/batchnorm/mul/ReadVariableOpA^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_1/ReadVariableOp2^sequential/batch_normalization_1/ReadVariableOp_13^sequential/conv2d_transpose/BiasAdd/ReadVariableOp<^sequential/conv2d_transpose/conv2d_transpose/ReadVariableOp5^sequential/conv2d_transpose_1/BiasAdd/ReadVariableOp>^sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOpC^sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpE^sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12^sequential_1/batch_normalization_2/ReadVariableOp4^sequential_1/batch_normalization_2/ReadVariableOp_1C^sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOpE^sequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12^sequential_1/batch_normalization_3/ReadVariableOp4^sequential_1/batch_normalization_3/ReadVariableOp_1+^sequential_1/conv2d/BiasAdd/ReadVariableOp*^sequential_1/conv2d/Conv2D/ReadVariableOp-^sequential_1/conv2d_1/BiasAdd/ReadVariableOp,^sequential_1/conv2d_1/Conv2D/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:         А::::::::::::::::::::::::::::2r
7sequential/batch_normalization/batchnorm/ReadVariableOp7sequential/batch_normalization/batchnorm/ReadVariableOp2v
9sequential/batch_normalization/batchnorm/ReadVariableOp_19sequential/batch_normalization/batchnorm/ReadVariableOp_12v
9sequential/batch_normalization/batchnorm/ReadVariableOp_29sequential/batch_normalization/batchnorm/ReadVariableOp_22z
;sequential/batch_normalization/batchnorm/mul/ReadVariableOp;sequential/batch_normalization/batchnorm/mul/ReadVariableOp2Д
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2И
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12b
/sequential/batch_normalization_1/ReadVariableOp/sequential/batch_normalization_1/ReadVariableOp2f
1sequential/batch_normalization_1/ReadVariableOp_11sequential/batch_normalization_1/ReadVariableOp_12h
2sequential/conv2d_transpose/BiasAdd/ReadVariableOp2sequential/conv2d_transpose/BiasAdd/ReadVariableOp2z
;sequential/conv2d_transpose/conv2d_transpose/ReadVariableOp;sequential/conv2d_transpose/conv2d_transpose/ReadVariableOp2l
4sequential/conv2d_transpose_1/BiasAdd/ReadVariableOp4sequential/conv2d_transpose_1/BiasAdd/ReadVariableOp2~
=sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOp=sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2И
Bsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpBsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2М
Dsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Dsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12f
1sequential_1/batch_normalization_2/ReadVariableOp1sequential_1/batch_normalization_2/ReadVariableOp2j
3sequential_1/batch_normalization_2/ReadVariableOp_13sequential_1/batch_normalization_2/ReadVariableOp_12И
Bsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOpBsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2М
Dsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Dsequential_1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12f
1sequential_1/batch_normalization_3/ReadVariableOp1sequential_1/batch_normalization_3/ReadVariableOp2j
3sequential_1/batch_normalization_3/ReadVariableOp_13sequential_1/batch_normalization_3/ReadVariableOp_12X
*sequential_1/conv2d/BiasAdd/ReadVariableOp*sequential_1/conv2d/BiasAdd/ReadVariableOp2V
)sequential_1/conv2d/Conv2D/ReadVariableOp)sequential_1/conv2d/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp,sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_1/Conv2D/ReadVariableOp+sequential_1/conv2d_1/Conv2D/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ж
л
8__inference_batch_normalization_1_layer_call_fn_11914624

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall║
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_119113642
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
Н
J__inference_sequential_2_layer_call_and_return_conditional_losses_11913046

inputs
sequential_11912987
sequential_11912989
sequential_11912991
sequential_11912993
sequential_11912995
sequential_11912997
sequential_11912999
sequential_11913001
sequential_11913003
sequential_11913005
sequential_11913007
sequential_11913009
sequential_11913011
sequential_11913013
sequential_1_11913016
sequential_1_11913018
sequential_1_11913020
sequential_1_11913022
sequential_1_11913024
sequential_1_11913026
sequential_1_11913028
sequential_1_11913030
sequential_1_11913032
sequential_1_11913034
sequential_1_11913036
sequential_1_11913038
sequential_1_11913040
sequential_1_11913042
identityИв"sequential/StatefulPartitionedCallв$sequential_1/StatefulPartitionedCall╒
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_11912987sequential_11912989sequential_11912991sequential_11912993sequential_11912995sequential_11912997sequential_11912999sequential_11913001sequential_11913003sequential_11913005sequential_11913007sequential_11913009sequential_11913011sequential_11913013*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_119117112$
"sequential/StatefulPartitionedCallВ
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_11913016sequential_1_11913018sequential_1_11913020sequential_1_11913022sequential_1_11913024sequential_1_11913026sequential_1_11913028sequential_1_11913030sequential_1_11913032sequential_1_11913034sequential_1_11913036sequential_1_11913038sequential_1_11913040sequential_1_11913042*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_119126992&
$sequential_1/StatefulPartitionedCall═
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:         А::::::::::::::::::::::::::::2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
√
Ў
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11914731

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╧
Ў
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11914927

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╗0
╠
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_11911175

inputs
assignmovingavg_11911150
assignmovingavg_1_11911156)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityИв#AssignMovingAvg/AssignSubVariableOpвAssignMovingAvg/ReadVariableOpв%AssignMovingAvg_1/AssignSubVariableOpв AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesР
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А1*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	А12
moments/StopGradientе
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         А12
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices│
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А1*
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:А1*
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:А1*
squeeze_dims
 2
moments/Squeeze_1╬
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg/11911150*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg/decayЦ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_11911150*
_output_shapes	
:А1*
dtype02 
AssignMovingAvg/ReadVariableOpЇ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg/11911150*
_output_shapes	
:А12
AssignMovingAvg/subы
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg/11911150*
_output_shapes	
:А12
AssignMovingAvg/mul│
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_11911150AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg/11911150*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp╘
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*-
_class#
!loc:@AssignMovingAvg_1/11911156*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg_1/decayЬ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_11911156*
_output_shapes	
:А1*
dtype02"
 AssignMovingAvg_1/ReadVariableOp■
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*-
_class#
!loc:@AssignMovingAvg_1/11911156*
_output_shapes	
:А12
AssignMovingAvg_1/subї
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*-
_class#
!loc:@AssignMovingAvg_1/11911156*
_output_shapes	
:А12
AssignMovingAvg_1/mul┐
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_11911156AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*-
_class#
!loc:@AssignMovingAvg_1/11911156*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yГ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А12
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А12
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А1*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А12
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А12
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А12
batchnorm/mul_2У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А1*
dtype02
batchnorm/ReadVariableOpВ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А12
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А12
batchnorm/add_1┤
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А12

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А1::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А1
 
_user_specified_nameinputs
╧
Ў
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11911900

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
═
f
G__inference_dropout_1_layer_call_and_return_conditional_losses_11912198

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╜
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
т
л
8__inference_batch_normalization_3_layer_call_fn_11914891

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_119121502
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
А
Ч
J__inference_sequential_2_layer_call_and_return_conditional_losses_11912858
sequential_input
sequential_11912799
sequential_11912801
sequential_11912803
sequential_11912805
sequential_11912807
sequential_11912809
sequential_11912811
sequential_11912813
sequential_11912815
sequential_11912817
sequential_11912819
sequential_11912821
sequential_11912823
sequential_11912825
sequential_1_11912828
sequential_1_11912830
sequential_1_11912832
sequential_1_11912834
sequential_1_11912836
sequential_1_11912838
sequential_1_11912840
sequential_1_11912842
sequential_1_11912844
sequential_1_11912846
sequential_1_11912848
sequential_1_11912850
sequential_1_11912852
sequential_1_11912854
identityИв"sequential/StatefulPartitionedCallв$sequential_1/StatefulPartitionedCall▀
"sequential/StatefulPartitionedCallStatefulPartitionedCallsequential_inputsequential_11912799sequential_11912801sequential_11912803sequential_11912805sequential_11912807sequential_11912809sequential_11912811sequential_11912813sequential_11912815sequential_11912817sequential_11912819sequential_11912821sequential_11912823sequential_11912825*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_119117112$
"sequential/StatefulPartitionedCallВ
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_11912828sequential_1_11912830sequential_1_11912832sequential_1_11912834sequential_1_11912836sequential_1_11912838sequential_1_11912840sequential_1_11912842sequential_1_11912844sequential_1_11912846sequential_1_11912848sequential_1_11912850sequential_1_11912852sequential_1_11912854*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_119126992&
$sequential_1/StatefulPartitionedCall═
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:         А::::::::::::::::::::::::::::2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:Z V
(
_output_shapes
:         А
*
_user_specified_namesequential_input
З
Ў
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11914865

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╧
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3█
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ц$
¤
P__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_11911410

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           2	
BiasAdd{
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           2	
Sigmoid┤
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                           @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
┴
Ь
&__inference_signature_wrapper_11913182
sequential_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identityИвStatefulPartitionedCall├
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference__wrapped_model_119110792
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Щ
_input_shapesЗ
Д:         А::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
(
_output_shapes
:         А
*
_user_specified_namesequential_input
▀%
В
H__inference_sequential_layer_call_and_return_conditional_losses_11911561
dense_input
dense_11911453
dense_11911455 
batch_normalization_11911484 
batch_normalization_11911486 
batch_normalization_11911488 
batch_normalization_11911490
conv2d_transpose_11911515
conv2d_transpose_11911517"
batch_normalization_1_11911546"
batch_normalization_1_11911548"
batch_normalization_1_11911550"
batch_normalization_1_11911552
conv2d_transpose_1_11911555
conv2d_transpose_1_11911557
identityИв+batch_normalization/StatefulPartitionedCallв-batch_normalization_1/StatefulPartitionedCallв(conv2d_transpose/StatefulPartitionedCallв*conv2d_transpose_1/StatefulPartitionedCallвdense/StatefulPartitionedCallФ
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_11911453dense_11911455*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_119114422
dense/StatefulPartitionedCall│
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_11911484batch_normalization_11911486batch_normalization_11911488batch_normalization_11911490*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_119111752-
+batch_normalization/StatefulPartitionedCallН
reshape/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_119115072
reshape/PartitionedCall∙
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_11911515conv2d_transpose_11911517*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_layer_call_and_return_conditional_losses_119112612*
(conv2d_transpose/StatefulPartitionedCallх
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0batch_normalization_1_11911546batch_normalization_1_11911548batch_normalization_1_11911550batch_normalization_1_11911552*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_119113332/
-batch_normalization_1/StatefulPartitionedCallЩ
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_transpose_1_11911555conv2d_transpose_1_11911557*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_119114102,
*conv2d_transpose_1/StatefulPartitionedCallў
IdentityIdentity3conv2d_transpose_1/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall^dense/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:         А::::::::::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:U Q
(
_output_shapes
:         А
%
_user_specified_namedense_input
В

╗
/__inference_sequential_1_layer_call_fn_11914399

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_119123412
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
э
▌
D__inference_conv2d_layer_call_and_return_conditional_losses_11914642

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd]

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

Gelu/mul/x|
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*/
_output_shapes
:         @2

Gelu/mul_
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
Gelu/Cast/xЙ
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*/
_output_shapes
:         @2
Gelu/truedivg
Gelu/ErfErfGelu/truediv:z:0*
T0*/
_output_shapes
:         @2

Gelu/Erf]

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2

Gelu/add/xz
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*/
_output_shapes
:         @2

Gelu/addu

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*/
_output_shapes
:         @2

Gelu/mul_1Ы
IdentityIdentityGelu/mul_1:z:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
∙
▄
C__inference_dense_layer_call_and_return_conditional_losses_11911442

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА1*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А12
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А1*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А12	
BiasAdd]

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

Gelu/mul/xu
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*(
_output_shapes
:         А12

Gelu/mul_
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
Gelu/Cast/xВ
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*(
_output_shapes
:         А12
Gelu/truediv`
Gelu/ErfErfGelu/truediv:z:0*
T0*(
_output_shapes
:         А12

Gelu/Erf]

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2

Gelu/add/xs
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*(
_output_shapes
:         А12

Gelu/addn

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*(
_output_shapes
:         А12

Gelu/mul_1Ф
IdentityIdentityGelu/mul_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А12

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ї	
▐
E__inference_dense_1_layer_call_and_return_conditional_losses_11912241

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А1*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
SigmoidР
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А1::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А1
 
_user_specified_nameinputs
╘%
¤
H__inference_sequential_layer_call_and_return_conditional_losses_11911711

inputs
dense_11911676
dense_11911678 
batch_normalization_11911681 
batch_normalization_11911683 
batch_normalization_11911685 
batch_normalization_11911687
conv2d_transpose_11911691
conv2d_transpose_11911693"
batch_normalization_1_11911696"
batch_normalization_1_11911698"
batch_normalization_1_11911700"
batch_normalization_1_11911702
conv2d_transpose_1_11911705
conv2d_transpose_1_11911707
identityИв+batch_normalization/StatefulPartitionedCallв-batch_normalization_1/StatefulPartitionedCallв(conv2d_transpose/StatefulPartitionedCallв*conv2d_transpose_1/StatefulPartitionedCallвdense/StatefulPartitionedCallП
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_11911676dense_11911678*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_119114422
dense/StatefulPartitionedCall╡
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_11911681batch_normalization_11911683batch_normalization_11911685batch_normalization_11911687*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А1*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_119112082-
+batch_normalization/StatefulPartitionedCallН
reshape/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_119115072
reshape/PartitionedCall∙
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_11911691conv2d_transpose_11911693*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_layer_call_and_return_conditional_losses_119112612*
(conv2d_transpose/StatefulPartitionedCallч
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0batch_normalization_1_11911696batch_normalization_1_11911698batch_normalization_1_11911700batch_normalization_1_11911702*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_119113642/
-batch_normalization_1/StatefulPartitionedCallЩ
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_transpose_1_11911705conv2d_transpose_1_11911707*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_119114102,
*conv2d_transpose_1/StatefulPartitionedCallў
IdentityIdentity3conv2d_transpose_1/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall^dense/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:         А::::::::::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╫к
╘'
!__inference__traced_save_11915298
file_prefix(
$savev2_yogi_iter_read_readvariableop	*
&savev2_yogi_beta_1_read_readvariableop*
&savev2_yogi_beta_2_read_readvariableop)
%savev2_yogi_decay_read_readvariableop+
'savev2_yogi_epsilon_read_readvariableop>
:savev2_yogi_l1_regularization_strength_read_readvariableop>
:savev2_yogi_l2_regularization_strength_read_readvariableop1
-savev2_yogi_learning_rate_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop6
2savev2_conv2d_transpose_kernel_read_readvariableop4
0savev2_conv2d_transpose_bias_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop8
4savev2_conv2d_transpose_1_kernel_read_readvariableop6
2savev2_conv2d_transpose_1_bias_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop*
&savev2_yogi_iter_1_read_readvariableop	,
(savev2_yogi_beta_1_1_read_readvariableop,
(savev2_yogi_beta_2_1_read_readvariableop+
'savev2_yogi_decay_1_read_readvariableop-
)savev2_yogi_epsilon_1_read_readvariableop@
<savev2_yogi_l1_regularization_strength_1_read_readvariableop@
<savev2_yogi_l2_regularization_strength_1_read_readvariableop3
/savev2_yogi_learning_rate_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_yogi_dense_kernel_v_read_readvariableop0
,savev2_yogi_dense_bias_v_read_readvariableop?
;savev2_yogi_batch_normalization_gamma_v_read_readvariableop>
:savev2_yogi_batch_normalization_beta_v_read_readvariableop=
9savev2_yogi_conv2d_transpose_kernel_v_read_readvariableop;
7savev2_yogi_conv2d_transpose_bias_v_read_readvariableopA
=savev2_yogi_batch_normalization_1_gamma_v_read_readvariableop@
<savev2_yogi_batch_normalization_1_beta_v_read_readvariableop?
;savev2_yogi_conv2d_transpose_1_kernel_v_read_readvariableop=
9savev2_yogi_conv2d_transpose_1_bias_v_read_readvariableop2
.savev2_yogi_dense_kernel_m_read_readvariableop0
,savev2_yogi_dense_bias_m_read_readvariableop?
;savev2_yogi_batch_normalization_gamma_m_read_readvariableop>
:savev2_yogi_batch_normalization_beta_m_read_readvariableop=
9savev2_yogi_conv2d_transpose_kernel_m_read_readvariableop;
7savev2_yogi_conv2d_transpose_bias_m_read_readvariableopA
=savev2_yogi_batch_normalization_1_gamma_m_read_readvariableop@
<savev2_yogi_batch_normalization_1_beta_m_read_readvariableop?
;savev2_yogi_conv2d_transpose_1_kernel_m_read_readvariableop=
9savev2_yogi_conv2d_transpose_1_bias_m_read_readvariableop3
/savev2_yogi_conv2d_kernel_v_read_readvariableop1
-savev2_yogi_conv2d_bias_v_read_readvariableopA
=savev2_yogi_batch_normalization_2_gamma_v_read_readvariableop@
<savev2_yogi_batch_normalization_2_beta_v_read_readvariableop5
1savev2_yogi_conv2d_1_kernel_v_read_readvariableop3
/savev2_yogi_conv2d_1_bias_v_read_readvariableopA
=savev2_yogi_batch_normalization_3_gamma_v_read_readvariableop@
<savev2_yogi_batch_normalization_3_beta_v_read_readvariableop4
0savev2_yogi_dense_1_kernel_v_read_readvariableop2
.savev2_yogi_dense_1_bias_v_read_readvariableop3
/savev2_yogi_conv2d_kernel_m_read_readvariableop1
-savev2_yogi_conv2d_bias_m_read_readvariableopA
=savev2_yogi_batch_normalization_2_gamma_m_read_readvariableop@
<savev2_yogi_batch_normalization_2_beta_m_read_readvariableop5
1savev2_yogi_conv2d_1_kernel_m_read_readvariableop3
/savev2_yogi_conv2d_1_bias_m_read_readvariableopA
=savev2_yogi_batch_normalization_3_gamma_m_read_readvariableop@
<savev2_yogi_batch_normalization_3_beta_m_read_readvariableop4
0savev2_yogi_dense_1_kernel_m_read_readvariableop2
.savev2_yogi_dense_1_bias_m_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameщ.
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Y*
dtype0*√-
valueё-Bю-YB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB,optimizer/epsilon/.ATTRIBUTES/VARIABLE_VALUEB?optimizer/l1_regularization_strength/.ATTRIBUTES/VARIABLE_VALUEB?optimizer/l2_regularization_strength/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-1/optimizer/epsilon/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/optimizer/l1_regularization_strength/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/optimizer/l2_regularization_strength/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/22/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/23/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/26/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/27/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/22/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/23/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/26/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/27/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names╜
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Y*
dtype0*╟
value╜B║YB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesШ&
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_yogi_iter_read_readvariableop&savev2_yogi_beta_1_read_readvariableop&savev2_yogi_beta_2_read_readvariableop%savev2_yogi_decay_read_readvariableop'savev2_yogi_epsilon_read_readvariableop:savev2_yogi_l1_regularization_strength_read_readvariableop:savev2_yogi_l2_regularization_strength_read_readvariableop-savev2_yogi_learning_rate_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop2savev2_conv2d_transpose_kernel_read_readvariableop0savev2_conv2d_transpose_bias_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop4savev2_conv2d_transpose_1_kernel_read_readvariableop2savev2_conv2d_transpose_1_bias_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop6savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop&savev2_yogi_iter_1_read_readvariableop(savev2_yogi_beta_1_1_read_readvariableop(savev2_yogi_beta_2_1_read_readvariableop'savev2_yogi_decay_1_read_readvariableop)savev2_yogi_epsilon_1_read_readvariableop<savev2_yogi_l1_regularization_strength_1_read_readvariableop<savev2_yogi_l2_regularization_strength_1_read_readvariableop/savev2_yogi_learning_rate_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_yogi_dense_kernel_v_read_readvariableop,savev2_yogi_dense_bias_v_read_readvariableop;savev2_yogi_batch_normalization_gamma_v_read_readvariableop:savev2_yogi_batch_normalization_beta_v_read_readvariableop9savev2_yogi_conv2d_transpose_kernel_v_read_readvariableop7savev2_yogi_conv2d_transpose_bias_v_read_readvariableop=savev2_yogi_batch_normalization_1_gamma_v_read_readvariableop<savev2_yogi_batch_normalization_1_beta_v_read_readvariableop;savev2_yogi_conv2d_transpose_1_kernel_v_read_readvariableop9savev2_yogi_conv2d_transpose_1_bias_v_read_readvariableop.savev2_yogi_dense_kernel_m_read_readvariableop,savev2_yogi_dense_bias_m_read_readvariableop;savev2_yogi_batch_normalization_gamma_m_read_readvariableop:savev2_yogi_batch_normalization_beta_m_read_readvariableop9savev2_yogi_conv2d_transpose_kernel_m_read_readvariableop7savev2_yogi_conv2d_transpose_bias_m_read_readvariableop=savev2_yogi_batch_normalization_1_gamma_m_read_readvariableop<savev2_yogi_batch_normalization_1_beta_m_read_readvariableop;savev2_yogi_conv2d_transpose_1_kernel_m_read_readvariableop9savev2_yogi_conv2d_transpose_1_bias_m_read_readvariableop/savev2_yogi_conv2d_kernel_v_read_readvariableop-savev2_yogi_conv2d_bias_v_read_readvariableop=savev2_yogi_batch_normalization_2_gamma_v_read_readvariableop<savev2_yogi_batch_normalization_2_beta_v_read_readvariableop1savev2_yogi_conv2d_1_kernel_v_read_readvariableop/savev2_yogi_conv2d_1_bias_v_read_readvariableop=savev2_yogi_batch_normalization_3_gamma_v_read_readvariableop<savev2_yogi_batch_normalization_3_beta_v_read_readvariableop0savev2_yogi_dense_1_kernel_v_read_readvariableop.savev2_yogi_dense_1_bias_v_read_readvariableop/savev2_yogi_conv2d_kernel_m_read_readvariableop-savev2_yogi_conv2d_bias_m_read_readvariableop=savev2_yogi_batch_normalization_2_gamma_m_read_readvariableop<savev2_yogi_batch_normalization_2_beta_m_read_readvariableop1savev2_yogi_conv2d_1_kernel_m_read_readvariableop/savev2_yogi_conv2d_1_bias_m_read_readvariableop=savev2_yogi_batch_normalization_3_gamma_m_read_readvariableop<savev2_yogi_batch_normalization_3_beta_m_read_readvariableop0savev2_yogi_dense_1_kernel_m_read_readvariableop.savev2_yogi_dense_1_bias_m_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *g
dtypes]
[2Y		2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*ж
_input_shapesФ
С: : : : : : : : : :
АА1:А1:А1:А1:@А:@:@:@:@::А1:А1:@:@:@:@:@:@:@:@:@А:А:А:А:А:А:	А1:: : : : : : : : : : : : :
АА1:А1:А1:А1:@А:@:@:@:@::
АА1:А1:А1:А1:@А:@:@:@:@::@:@:@:@:@А:А:А:А:	А1::@:@:@:@:@А:А:А:А:	А1:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :&	"
 
_output_shapes
:
АА1:!


_output_shapes	
:А1:!

_output_shapes	
:А1:!

_output_shapes	
:А1:-)
'
_output_shapes
:@А: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
::!

_output_shapes	
:А1:!

_output_shapes	
:А1: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:!

_output_shapes	
:А:! 

_output_shapes	
:А:!!

_output_shapes	
:А:!"

_output_shapes	
:А:%#!

_output_shapes
:	А1: $

_output_shapes
::%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :&1"
 
_output_shapes
:
АА1:!2

_output_shapes	
:А1:!3

_output_shapes	
:А1:!4

_output_shapes	
:А1:-5)
'
_output_shapes
:@А: 6

_output_shapes
:@: 7

_output_shapes
:@: 8

_output_shapes
:@:,9(
&
_output_shapes
:@: :

_output_shapes
::&;"
 
_output_shapes
:
АА1:!<

_output_shapes	
:А1:!=

_output_shapes	
:А1:!>

_output_shapes	
:А1:-?)
'
_output_shapes
:@А: @

_output_shapes
:@: A

_output_shapes
:@: B

_output_shapes
:@:,C(
&
_output_shapes
:@: D

_output_shapes
::,E(
&
_output_shapes
:@: F

_output_shapes
:@: G

_output_shapes
:@: H

_output_shapes
:@:-I)
'
_output_shapes
:@А:!J

_output_shapes	
:А:!K

_output_shapes	
:А:!L

_output_shapes	
:А:%M!

_output_shapes
:	А1: N

_output_shapes
::,O(
&
_output_shapes
:@: P

_output_shapes
:@: Q

_output_shapes
:@: R

_output_shapes
:@:-S)
'
_output_shapes
:@А:!T

_output_shapes	
:А:!U

_output_shapes	
:А:!V

_output_shapes	
:А:%W!

_output_shapes
:	А1: X

_output_shapes
::Y

_output_shapes
: 
∙
▀
F__inference_conv2d_1_layer_call_and_return_conditional_losses_11912099

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdd]

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

Gelu/mul/x}
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*0
_output_shapes
:         А2

Gelu/mul_
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
Gelu/Cast/xК
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*0
_output_shapes
:         А2
Gelu/truedivh
Gelu/ErfErfGelu/truediv:z:0*
T0*0
_output_shapes
:         А2

Gelu/Erf]

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2

Gelu/add/x{
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*0
_output_shapes
:         А2

Gelu/addv

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*0
_output_shapes
:         А2

Gelu/mul_1Ь
IdentityIdentityGelu/mul_1:z:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
к┼
═
H__inference_sequential_layer_call_and_return_conditional_losses_11913803

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource0
,batch_normalization_assignmovingavg_119137052
.batch_normalization_assignmovingavg_1_11913711=
9batch_normalization_batchnorm_mul_readvariableop_resource9
5batch_normalization_batchnorm_readvariableop_resource=
9conv2d_transpose_conv2d_transpose_readvariableop_resource4
0conv2d_transpose_biasadd_readvariableop_resource1
-batch_normalization_1_readvariableop_resource3
/batch_normalization_1_readvariableop_1_resourceB
>batch_normalization_1_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource?
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource6
2conv2d_transpose_1_biasadd_readvariableop_resource
identityИв7batch_normalization/AssignMovingAvg/AssignSubVariableOpв2batch_normalization/AssignMovingAvg/ReadVariableOpв9batch_normalization/AssignMovingAvg_1/AssignSubVariableOpв4batch_normalization/AssignMovingAvg_1/ReadVariableOpв,batch_normalization/batchnorm/ReadVariableOpв0batch_normalization/batchnorm/mul/ReadVariableOpв$batch_normalization_1/AssignNewValueв&batch_normalization_1/AssignNewValue_1в5batch_normalization_1/FusedBatchNormV3/ReadVariableOpв7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_1/ReadVariableOpв&batch_normalization_1/ReadVariableOp_1в'conv2d_transpose/BiasAdd/ReadVariableOpв0conv2d_transpose/conv2d_transpose/ReadVariableOpв)conv2d_transpose_1/BiasAdd/ReadVariableOpв2conv2d_transpose_1/conv2d_transpose/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpб
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
АА1*
dtype02
dense/MatMul/ReadVariableOpЖ
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А12
dense/MatMulЯ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А1*
dtype02
dense/BiasAdd/ReadVariableOpЪ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А12
dense/BiasAddi
dense/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dense/Gelu/mul/xН
dense/Gelu/mulMuldense/Gelu/mul/x:output:0dense/BiasAdd:output:0*
T0*(
_output_shapes
:         А12
dense/Gelu/mulk
dense/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
dense/Gelu/Cast/xЪ
dense/Gelu/truedivRealDivdense/BiasAdd:output:0dense/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:         А12
dense/Gelu/truedivr
dense/Gelu/ErfErfdense/Gelu/truediv:z:0*
T0*(
_output_shapes
:         А12
dense/Gelu/Erfi
dense/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
dense/Gelu/add/xЛ
dense/Gelu/addAddV2dense/Gelu/add/x:output:0dense/Gelu/Erf:y:0*
T0*(
_output_shapes
:         А12
dense/Gelu/addЖ
dense/Gelu/mul_1Muldense/Gelu/mul:z:0dense/Gelu/add:z:0*
T0*(
_output_shapes
:         А12
dense/Gelu/mul_1▓
2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 24
2batch_normalization/moments/mean/reduction_indices┌
 batch_normalization/moments/meanMeandense/Gelu/mul_1:z:0;batch_normalization/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А1*
	keep_dims(2"
 batch_normalization/moments/mean╣
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0*
_output_shapes
:	А12*
(batch_normalization/moments/StopGradientя
-batch_normalization/moments/SquaredDifferenceSquaredDifferencedense/Gelu/mul_1:z:01batch_normalization/moments/StopGradient:output:0*
T0*(
_output_shapes
:         А12/
-batch_normalization/moments/SquaredDifference║
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 28
6batch_normalization/moments/variance/reduction_indicesГ
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А1*
	keep_dims(2&
$batch_normalization/moments/variance╜
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes	
:А1*
squeeze_dims
 2%
#batch_normalization/moments/Squeeze┼
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes	
:А1*
squeeze_dims
 2'
%batch_normalization/moments/Squeeze_1К
)batch_normalization/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*?
_class5
31loc:@batch_normalization/AssignMovingAvg/11913705*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2+
)batch_normalization/AssignMovingAvg/decay╥
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp,batch_normalization_assignmovingavg_11913705*
_output_shapes	
:А1*
dtype024
2batch_normalization/AssignMovingAvg/ReadVariableOp╪
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0,batch_normalization/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*?
_class5
31loc:@batch_normalization/AssignMovingAvg/11913705*
_output_shapes	
:А12)
'batch_normalization/AssignMovingAvg/sub╧
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*?
_class5
31loc:@batch_normalization/AssignMovingAvg/11913705*
_output_shapes	
:А12)
'batch_normalization/AssignMovingAvg/mulл
7batch_normalization/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,batch_normalization_assignmovingavg_11913705+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*?
_class5
31loc:@batch_normalization/AssignMovingAvg/11913705*
_output_shapes
 *
dtype029
7batch_normalization/AssignMovingAvg/AssignSubVariableOpР
+batch_normalization/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@batch_normalization/AssignMovingAvg_1/11913711*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2-
+batch_normalization/AssignMovingAvg_1/decay╪
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp.batch_normalization_assignmovingavg_1_11913711*
_output_shapes	
:А1*
dtype026
4batch_normalization/AssignMovingAvg_1/ReadVariableOpт
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0.batch_normalization/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@batch_normalization/AssignMovingAvg_1/11913711*
_output_shapes	
:А12+
)batch_normalization/AssignMovingAvg_1/sub┘
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@batch_normalization/AssignMovingAvg_1/11913711*
_output_shapes	
:А12+
)batch_normalization/AssignMovingAvg_1/mul╖
9batch_normalization/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.batch_normalization_assignmovingavg_1_11913711-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@batch_normalization/AssignMovingAvg_1/11913711*
_output_shapes
 *
dtype02;
9batch_normalization/AssignMovingAvg_1/AssignSubVariableOpП
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2%
#batch_normalization/batchnorm/add/y╙
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А12#
!batch_normalization/batchnorm/addа
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:А12%
#batch_normalization/batchnorm/Rsqrt█
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А1*
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOp╓
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А12#
!batch_normalization/batchnorm/mul┴
#batch_normalization/batchnorm/mul_1Muldense/Gelu/mul_1:z:0%batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А12%
#batch_normalization/batchnorm/mul_1╠
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:А12%
#batch_normalization/batchnorm/mul_2╧
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:А1*
dtype02.
,batch_normalization/batchnorm/ReadVariableOp╥
!batch_normalization/batchnorm/subSub4batch_normalization/batchnorm/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А12#
!batch_normalization/batchnorm/sub╓
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А12%
#batch_normalization/batchnorm/add_1u
reshape/ShapeShape'batch_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
reshape/ShapeД
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stackИ
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1И
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2Т
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2u
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2
reshape/Reshape/shape/3ъ
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape▒
reshape/ReshapeReshape'batch_normalization/batchnorm/add_1:z:0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:         А2
reshape/Reshapex
conv2d_transpose/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose/ShapeЦ
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$conv2d_transpose/strided_slice/stackЪ
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_1Ъ
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_2╚
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
conv2d_transpose/strided_slicev
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose/stack/1v
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose/stack/2v
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose/stack/3°
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose/stackЪ
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose/strided_slice_1/stackЮ
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_1Ю
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_2╥
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose/strided_slice_1ч
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype022
0conv2d_transpose/conv2d_transpose/ReadVariableOp┤
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0reshape/Reshape:output:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2#
!conv2d_transpose/conv2d_transpose┐
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'conv2d_transpose/BiasAdd/ReadVariableOp╓
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_transpose/BiasAdd
conv2d_transpose/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
conv2d_transpose/Gelu/mul/x└
conv2d_transpose/Gelu/mulMul$conv2d_transpose/Gelu/mul/x:output:0!conv2d_transpose/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_transpose/Gelu/mulБ
conv2d_transpose/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *є╡?2
conv2d_transpose/Gelu/Cast/x═
conv2d_transpose/Gelu/truedivRealDiv!conv2d_transpose/BiasAdd:output:0%conv2d_transpose/Gelu/Cast/x:output:0*
T0*/
_output_shapes
:         @2
conv2d_transpose/Gelu/truedivЪ
conv2d_transpose/Gelu/ErfErf!conv2d_transpose/Gelu/truediv:z:0*
T0*/
_output_shapes
:         @2
conv2d_transpose/Gelu/Erf
conv2d_transpose/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
conv2d_transpose/Gelu/add/x╛
conv2d_transpose/Gelu/addAddV2$conv2d_transpose/Gelu/add/x:output:0conv2d_transpose/Gelu/Erf:y:0*
T0*/
_output_shapes
:         @2
conv2d_transpose/Gelu/add╣
conv2d_transpose/Gelu/mul_1Mulconv2d_transpose/Gelu/mul:z:0conv2d_transpose/Gelu/add:z:0*
T0*/
_output_shapes
:         @2
conv2d_transpose/Gelu/mul_1╢
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_1/ReadVariableOp╝
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_1/ReadVariableOp_1щ
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ї
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_transpose/Gelu/mul_1:z:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2(
&batch_normalization_1/FusedBatchNormV3▒
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization_1/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_1/AssignNewValue┐
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_1/AssignNewValue_1О
conv2d_transpose_1/ShapeShape*batch_normalization_1/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
conv2d_transpose_1/ShapeЪ
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_1/strided_slice/stackЮ
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_1Ю
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_2╘
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_1/strided_slicez
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_1/stack/1z
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_1/stack/2z
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_1/stack/3Д
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_1/stackЮ
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_1/strided_slice_1/stackв
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_1в
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_2▐
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_1/strided_slice_1ь
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype024
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp╬
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
2%
#conv2d_transpose_1/conv2d_transpose┼
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)conv2d_transpose_1/BiasAdd/ReadVariableOp▐
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2
conv2d_transpose_1/BiasAddв
conv2d_transpose_1/SigmoidSigmoid#conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_transpose_1/Sigmoid╦
IdentityIdentityconv2d_transpose_1/Sigmoid:y:08^batch_normalization/AssignMovingAvg/AssignSubVariableOp3^batch_normalization/AssignMovingAvg/ReadVariableOp:^batch_normalization/AssignMovingAvg_1/AssignSubVariableOp5^batch_normalization/AssignMovingAvg_1/ReadVariableOp-^batch_normalization/batchnorm/ReadVariableOp1^batch_normalization/batchnorm/mul/ReadVariableOp%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:         А::::::::::::::2r
7batch_normalization/AssignMovingAvg/AssignSubVariableOp7batch_normalization/AssignMovingAvg/AssignSubVariableOp2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2v
9batch_normalization/AssignMovingAvg_1/AssignSubVariableOp9batch_normalization/AssignMovingAvg_1/AssignSubVariableOp2l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┐
H
,__inference_dropout_1_layer_call_fn_11914980

inputs
identity╤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_119122032
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
├
Ў
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11911800

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
│

╛
-__inference_sequential_layer_call_fn_11911742
dense_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_119117112
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*_
_input_shapesN
L:         А::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
(
_output_shapes
:         А
%
_user_specified_namedense_input
р
К
5__inference_conv2d_transpose_1_layer_call_fn_11911420

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_119114102
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                           @::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┬
serving_defaultо
N
sequential_input:
"serving_default_sequential_input:0         А@
sequential_10
StatefulPartitionedCall:0         tensorflow/serving/predict:╣╜
ф}
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
П_default_save_signature
Р__call__
+С&call_and_return_all_conditional_losses"╚{
_tf_keras_sequentialй{{"class_name": "Sequential", "name": "sequential_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_input"}}, {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_input"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "dtype": "float32", "units": 6272, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 128]}}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}]}}, {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": false, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": false, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": false, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": false, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": false, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": false, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_input"}}, {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_input"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "dtype": "float32", "units": 6272, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 128]}}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}]}}, {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": false, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": false, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": false, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": false, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": false, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": false, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Addons>Yogi", "config": {"name": "Yogi", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta1": 0.8999999761581421, "beta2": 0.9990000128746033, "epsilon": 0.0010000000474974513, "l1_regularization_strength": 0.0, "l2_regularization_strength": 0.0, "activation": "sign", "initial_accumulator_value": 1e-06}}}}
¤<
	layer_with_weights-0
	layer-0

layer_with_weights-1

layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
regularization_losses
trainable_variables
	variables
	keras_api
Т__call__
+У&call_and_return_all_conditional_losses"Ь:
_tf_keras_sequential¤9{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_input"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "dtype": "float32", "units": 6272, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 128]}}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_input"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "dtype": "float32", "units": 6272, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 128]}}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}]}}}
НD
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer_with_weights-4
layer-7
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses"ГA
_tf_keras_sequentialф@{"class_name": "Sequential", "name": "sequential_1", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": false, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": false, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": false, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": false, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": false, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": false, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": false, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": false, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": false, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": false, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": false, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": false, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Addons>Yogi", "config": {"name": "Yogi", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta1": 0.8999999761581421, "beta2": 0.9990000128746033, "epsilon": 0.0010000000474974513, "l1_regularization_strength": 0.0, "l2_regularization_strength": 0.0, "activation": "sign", "initial_accumulator_value": 1e-06}}}}
ш
 iter

!beta_1

"beta_2
	#decay
$epsilon
%l1_regularization_strength
&l2_regularization_strength
'learning_rate(vч)vш*vщ+vъ,vы-vь.vэ/vю0vя1vЁ(mё)mЄ*mє+mЇ,mї-mЎ.mў/m°0m∙1m·"
	optimizer
 "
trackable_list_wrapper
f
(0
)1
*2
+3
,4
-5
.6
/7
08
19"
trackable_list_wrapper
Ў
(0
)1
*2
+3
24
35
,6
-7
.8
/9
410
511
012
113
614
715
816
917
:18
;19
<20
=21
>22
?23
@24
A25
B26
C27"
trackable_list_wrapper
╬
regularization_losses
Dlayer_regularization_losses
trainable_variables
Emetrics

Flayers
Glayer_metrics
Hnon_trainable_variables
	variables
Р__call__
П_default_save_signature
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
-
Цserving_default"
signature_map
ч

(kernel
)bias
Iregularization_losses
Jtrainable_variables
K	variables
L	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses"└
_tf_keras_layerж{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "dtype": "float32", "units": 6272, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
┤	
Maxis
	*gamma
+beta
2moving_mean
3moving_variance
Nregularization_losses
Otrainable_variables
P	variables
Q	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses"▐
_tf_keras_layer─{"class_name": "BatchNormalization", "name": "batch_normalization", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 6272}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6272]}}
ў
Rregularization_losses
Strainable_variables
T	variables
U	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses"ц
_tf_keras_layer╠{"class_name": "Reshape", "name": "reshape", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 128]}}}
е


,kernel
-bias
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses"■
_tf_keras_layerф{"class_name": "Conv2DTranspose", "name": "conv2d_transpose", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 7, 128]}}
╝	
Zaxis
	.gamma
/beta
4moving_mean
5moving_variance
[regularization_losses
\trainable_variables
]	variables
^	keras_api
Я__call__
+а&call_and_return_all_conditional_losses"ц
_tf_keras_layer╠{"class_name": "BatchNormalization", "name": "batch_normalization_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 64]}}
л


0kernel
1bias
_regularization_losses
`trainable_variables
a	variables
b	keras_api
б__call__
+в&call_and_return_all_conditional_losses"Д	
_tf_keras_layerъ{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 64]}}
 "
trackable_list_wrapper
f
(0
)1
*2
+3
,4
-5
.6
/7
08
19"
trackable_list_wrapper
Ж
(0
)1
*2
+3
24
35
,6
-7
.8
/9
410
511
012
113"
trackable_list_wrapper
░
regularization_losses
clayer_regularization_losses
trainable_variables
dmetrics

elayers
flayer_metrics
gnon_trainable_variables
	variables
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
ё


6kernel
7bias
hregularization_losses
itrainable_variables
j	variables
k	keras_api
г__call__
+д&call_and_return_all_conditional_losses"╩	
_tf_keras_layer░	{"class_name": "Conv2D", "name": "conv2d", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}}
╛	
laxis
	8gamma
9beta
:moving_mean
;moving_variance
mregularization_losses
ntrainable_variables
o	variables
p	keras_api
е__call__
+ж&call_and_return_all_conditional_losses"ш
_tf_keras_layer╬{"class_name": "BatchNormalization", "name": "batch_normalization_2", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_2", "trainable": false, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 64]}}
х
qregularization_losses
rtrainable_variables
s	variables
t	keras_api
з__call__
+и&call_and_return_all_conditional_losses"╘
_tf_keras_layer║{"class_name": "Dropout", "name": "dropout", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": false, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}
ў	

<kernel
=bias
uregularization_losses
vtrainable_variables
w	variables
x	keras_api
й__call__
+к&call_and_return_all_conditional_losses"╨
_tf_keras_layer╢{"class_name": "Conv2D", "name": "conv2d_1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "gelu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 64]}}
╛	
yaxis
	>gamma
?beta
@moving_mean
Amoving_variance
zregularization_losses
{trainable_variables
|	variables
}	keras_api
л__call__
+м&call_and_return_all_conditional_losses"ш
_tf_keras_layer╬{"class_name": "BatchNormalization", "name": "batch_normalization_3", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_3", "trainable": false, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 7, 128]}}
ы
~regularization_losses
trainable_variables
А	variables
Б	keras_api
н__call__
+о&call_and_return_all_conditional_losses"╪
_tf_keras_layer╛{"class_name": "Dropout", "name": "dropout_1", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": false, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}
ъ
Вregularization_losses
Гtrainable_variables
Д	variables
Е	keras_api
п__call__
+░&call_and_return_all_conditional_losses"╒
_tf_keras_layer╗{"class_name": "Flatten", "name": "flatten", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": false, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
■

Bkernel
Cbias
Жregularization_losses
Зtrainable_variables
И	variables
Й	keras_api
▒__call__
+▓&call_and_return_all_conditional_losses"╙
_tf_keras_layer╣{"class_name": "Dense", "name": "dense_1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": false, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 6272}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6272]}}
Ё
	Кiter
Лbeta_1
Мbeta_2

Нdecay
Оepsilon
Пl1_regularization_strength
Рl2_regularization_strength
Сlearning_rate6v√7v№8v¤9v■<v =vА>vБ?vВBvГCvД6mЕ7mЖ8mЗ9mИ<mЙ=mК>mЛ?mМBmНCmО"
	optimizer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ж
60
71
82
93
:4
;5
<6
=7
>8
?9
@10
A11
B12
C13"
trackable_list_wrapper
╡
regularization_losses
 Тlayer_regularization_losses
trainable_variables
Уmetrics
Фlayers
Хlayer_metrics
Цnon_trainable_variables
	variables
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Yogi/iter
: (2Yogi/beta_1
: (2Yogi/beta_2
: (2
Yogi/decay
: (2Yogi/epsilon
):' (2Yogi/l1_regularization_strength
):' (2Yogi/l2_regularization_strength
: (2Yogi/learning_rate
 :
АА12dense/kernel
:А12
dense/bias
(:&А12batch_normalization/gamma
':%А12batch_normalization/beta
2:0@А2conv2d_transpose/kernel
#:!@2conv2d_transpose/bias
):'@2batch_normalization_1/gamma
(:&@2batch_normalization_1/beta
3:1@2conv2d_transpose_1/kernel
%:#2conv2d_transpose_1/bias
0:.А1 (2batch_normalization/moving_mean
4:2А1 (2#batch_normalization/moving_variance
1:/@ (2!batch_normalization_1/moving_mean
5:3@ (2%batch_normalization_1/moving_variance
':%@2conv2d/kernel
:@2conv2d/bias
):'@2batch_normalization_2/gamma
(:&@2batch_normalization_2/beta
1:/@ (2!batch_normalization_2/moving_mean
5:3@ (2%batch_normalization_2/moving_variance
*:(@А2conv2d_1/kernel
:А2conv2d_1/bias
*:(А2batch_normalization_3/gamma
):'А2batch_normalization_3/beta
2:0А (2!batch_normalization_3/moving_mean
6:4А (2%batch_normalization_3/moving_variance
!:	А12dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
(
Ч0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
ж
20
31
42
53
64
75
86
97
:8
;9
<10
=11
>12
?13
@14
A15
B16
C17"
trackable_list_wrapper
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
╡
Iregularization_losses
 Шlayer_regularization_losses
Jtrainable_variables
Щmetrics
Ъlayer_metrics
Ыnon_trainable_variables
K	variables
Ьlayers
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
<
*0
+1
22
33"
trackable_list_wrapper
╡
Nregularization_losses
 Эlayer_regularization_losses
Otrainable_variables
Юmetrics
Яlayer_metrics
аnon_trainable_variables
P	variables
бlayers
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Rregularization_losses
 вlayer_regularization_losses
Strainable_variables
гmetrics
дlayer_metrics
еnon_trainable_variables
T	variables
жlayers
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
╡
Vregularization_losses
 зlayer_regularization_losses
Wtrainable_variables
иmetrics
йlayer_metrics
кnon_trainable_variables
X	variables
лlayers
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
<
.0
/1
42
53"
trackable_list_wrapper
╡
[regularization_losses
 мlayer_regularization_losses
\trainable_variables
нmetrics
оlayer_metrics
пnon_trainable_variables
]	variables
░layers
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
╡
_regularization_losses
 ▒layer_regularization_losses
`trainable_variables
▓metrics
│layer_metrics
┤non_trainable_variables
a	variables
╡layers
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
	0

1
2
3
4
5"
trackable_list_wrapper
 "
trackable_dict_wrapper
<
20
31
42
53"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
╡
hregularization_losses
 ╢layer_regularization_losses
itrainable_variables
╖metrics
╕layer_metrics
╣non_trainable_variables
j	variables
║layers
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
80
91
:2
;3"
trackable_list_wrapper
╡
mregularization_losses
 ╗layer_regularization_losses
ntrainable_variables
╝metrics
╜layer_metrics
╛non_trainable_variables
o	variables
┐layers
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
qregularization_losses
 └layer_regularization_losses
rtrainable_variables
┴metrics
┬layer_metrics
├non_trainable_variables
s	variables
─layers
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
╡
uregularization_losses
 ┼layer_regularization_losses
vtrainable_variables
╞metrics
╟layer_metrics
╚non_trainable_variables
w	variables
╔layers
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
>0
?1
@2
A3"
trackable_list_wrapper
╡
zregularization_losses
 ╩layer_regularization_losses
{trainable_variables
╦metrics
╠layer_metrics
═non_trainable_variables
|	variables
╬layers
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╢
~regularization_losses
 ╧layer_regularization_losses
trainable_variables
╨metrics
╤layer_metrics
╥non_trainable_variables
А	variables
╙layers
н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Вregularization_losses
 ╘layer_regularization_losses
Гtrainable_variables
╒metrics
╓layer_metrics
╫non_trainable_variables
Д	variables
╪layers
п__call__
+░&call_and_return_all_conditional_losses
'░"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
╕
Жregularization_losses
 ┘layer_regularization_losses
Зtrainable_variables
┌metrics
█layer_metrics
▄non_trainable_variables
И	variables
▌layers
▒__call__
+▓&call_and_return_all_conditional_losses
'▓"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Yogi/iter
: (2Yogi/beta_1
: (2Yogi/beta_2
: (2
Yogi/decay
: (2Yogi/epsilon
):' (2Yogi/l1_regularization_strength
):' (2Yogi/l2_regularization_strength
: (2Yogi/learning_rate
 "
trackable_list_wrapper
(
▐0"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_dict_wrapper
Ж
60
71
82
93
:4
;5
<6
=7
>8
?9
@10
A11
B12
C13"
trackable_list_wrapper
┐

▀total

рcount
с	variables
т	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
20
31"
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
.
40
51"
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
<
80
91
:2
;3"
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
<
>0
?1
@2
A3"
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
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
┐

уtotal

фcount
х	variables
ц	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
:  (2total
:  (2count
0
▀0
р1"
trackable_list_wrapper
.
с	variables"
_generic_user_object
:  (2total
:  (2count
0
у0
ф1"
trackable_list_wrapper
.
х	variables"
_generic_user_object
%:#
АА12Yogi/dense/kernel/v
:А12Yogi/dense/bias/v
-:+А12 Yogi/batch_normalization/gamma/v
,:*А12Yogi/batch_normalization/beta/v
7:5@А2Yogi/conv2d_transpose/kernel/v
(:&@2Yogi/conv2d_transpose/bias/v
.:,@2"Yogi/batch_normalization_1/gamma/v
-:+@2!Yogi/batch_normalization_1/beta/v
8:6@2 Yogi/conv2d_transpose_1/kernel/v
*:(2Yogi/conv2d_transpose_1/bias/v
%:#
АА12Yogi/dense/kernel/m
:А12Yogi/dense/bias/m
-:+А12 Yogi/batch_normalization/gamma/m
,:*А12Yogi/batch_normalization/beta/m
7:5@А2Yogi/conv2d_transpose/kernel/m
(:&@2Yogi/conv2d_transpose/bias/m
.:,@2"Yogi/batch_normalization_1/gamma/m
-:+@2!Yogi/batch_normalization_1/beta/m
8:6@2 Yogi/conv2d_transpose_1/kernel/m
*:(2Yogi/conv2d_transpose_1/bias/m
,:*@2Yogi/conv2d/kernel/v
:@2Yogi/conv2d/bias/v
.:,@2"Yogi/batch_normalization_2/gamma/v
-:+@2!Yogi/batch_normalization_2/beta/v
/:-@А2Yogi/conv2d_1/kernel/v
!:А2Yogi/conv2d_1/bias/v
/:-А2"Yogi/batch_normalization_3/gamma/v
.:,А2!Yogi/batch_normalization_3/beta/v
&:$	А12Yogi/dense_1/kernel/v
:2Yogi/dense_1/bias/v
,:*@2Yogi/conv2d/kernel/m
:@2Yogi/conv2d/bias/m
.:,@2"Yogi/batch_normalization_2/gamma/m
-:+@2!Yogi/batch_normalization_2/beta/m
/:-@А2Yogi/conv2d_1/kernel/m
!:А2Yogi/conv2d_1/bias/m
/:-А2"Yogi/batch_normalization_3/gamma/m
.:,А2!Yogi/batch_normalization_3/beta/m
&:$	А12Yogi/dense_1/kernel/m
:2Yogi/dense_1/bias/m
ы2ш
#__inference__wrapped_model_11911079└
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *0в-
+К(
sequential_input         А
К2З
/__inference_sequential_2_layer_call_fn_11913680
/__inference_sequential_2_layer_call_fn_11913105
/__inference_sequential_2_layer_call_fn_11912982
/__inference_sequential_2_layer_call_fn_11913619└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ў2є
J__inference_sequential_2_layer_call_and_return_conditional_losses_11913386
J__inference_sequential_2_layer_call_and_return_conditional_losses_11912858
J__inference_sequential_2_layer_call_and_return_conditional_losses_11912796
J__inference_sequential_2_layer_call_and_return_conditional_losses_11913558└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
В2 
-__inference_sequential_layer_call_fn_11911671
-__inference_sequential_layer_call_fn_11913974
-__inference_sequential_layer_call_fn_11913941
-__inference_sequential_layer_call_fn_11911742└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ю2ы
H__inference_sequential_layer_call_and_return_conditional_losses_11913803
H__inference_sequential_layer_call_and_return_conditional_losses_11911599
H__inference_sequential_layer_call_and_return_conditional_losses_11913908
H__inference_sequential_layer_call_and_return_conditional_losses_11911561└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ь2щ
/__inference_sequential_1_layer_call_fn_11914177
/__inference_sequential_1_layer_call_fn_11914210
/__inference_sequential_1_layer_call_fn_11912445
/__inference_sequential_1_layer_call_fn_11912372
/__inference_sequential_1_layer_call_fn_11914399
/__inference_sequential_1_layer_call_fn_11914432└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
О2Л
J__inference_sequential_1_layer_call_and_return_conditional_losses_11914144
J__inference_sequential_1_layer_call_and_return_conditional_losses_11914366
J__inference_sequential_1_layer_call_and_return_conditional_losses_11912258
J__inference_sequential_1_layer_call_and_return_conditional_losses_11914073
J__inference_sequential_1_layer_call_and_return_conditional_losses_11914295
J__inference_sequential_1_layer_call_and_return_conditional_losses_11912298└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╓B╙
&__inference_signature_wrapper_11913182sequential_input"Ф
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
╥2╧
(__inference_dense_layer_call_fn_11914459в
Щ▓Х
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
annotationsк *
 
э2ъ
C__inference_dense_layer_call_and_return_conditional_losses_11914450в
Щ▓Х
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
annotationsк *
 
к2з
6__inference_batch_normalization_layer_call_fn_11914528
6__inference_batch_normalization_layer_call_fn_11914541┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
р2▌
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_11914495
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_11914515┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╘2╤
*__inference_reshape_layer_call_fn_11914560в
Щ▓Х
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
annotationsк *
 
я2ь
E__inference_reshape_layer_call_and_return_conditional_losses_11914555в
Щ▓Х
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
annotationsк *
 
У2Р
3__inference_conv2d_transpose_layer_call_fn_11911271╪
Щ▓Х
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
annotationsк *8в5
3К0,                           А
о2л
N__inference_conv2d_transpose_layer_call_and_return_conditional_losses_11911261╪
Щ▓Х
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
annotationsк *8в5
3К0,                           А
о2л
8__inference_batch_normalization_1_layer_call_fn_11914611
8__inference_batch_normalization_1_layer_call_fn_11914624┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ф2с
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11914598
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11914580┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ф2С
5__inference_conv2d_transpose_1_layer_call_fn_11911420╫
Щ▓Х
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
annotationsк *7в4
2К/+                           @
п2м
P__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_11911410╫
Щ▓Х
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
annotationsк *7в4
2К/+                           @
╙2╨
)__inference_conv2d_layer_call_fn_11914651в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_conv2d_layer_call_and_return_conditional_losses_11914642в
Щ▓Х
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
annotationsк *
 
в2Я
8__inference_batch_normalization_2_layer_call_fn_11914775
8__inference_batch_normalization_2_layer_call_fn_11914700
8__inference_batch_normalization_2_layer_call_fn_11914762
8__inference_batch_normalization_2_layer_call_fn_11914713┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
О2Л
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11914687
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11914669
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11914731
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11914749┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Т2П
*__inference_dropout_layer_call_fn_11914797
*__inference_dropout_layer_call_fn_11914802┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╚2┼
E__inference_dropout_layer_call_and_return_conditional_losses_11914787
E__inference_dropout_layer_call_and_return_conditional_losses_11914792┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╒2╥
+__inference_conv2d_1_layer_call_fn_11914829в
Щ▓Х
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
annotationsк *
 
Ё2э
F__inference_conv2d_1_layer_call_and_return_conditional_losses_11914820в
Щ▓Х
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
annotationsк *
 
в2Я
8__inference_batch_normalization_3_layer_call_fn_11914953
8__inference_batch_normalization_3_layer_call_fn_11914891
8__inference_batch_normalization_3_layer_call_fn_11914940
8__inference_batch_normalization_3_layer_call_fn_11914878┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
О2Л
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11914927
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11914847
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11914909
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11914865┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
,__inference_dropout_1_layer_call_fn_11914975
,__inference_dropout_1_layer_call_fn_11914980┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╠2╔
G__inference_dropout_1_layer_call_and_return_conditional_losses_11914965
G__inference_dropout_1_layer_call_and_return_conditional_losses_11914970┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╘2╤
*__inference_flatten_layer_call_fn_11914991в
Щ▓Х
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
annotationsк *
 
я2ь
E__inference_flatten_layer_call_and_return_conditional_losses_11914986в
Щ▓Х
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
annotationsк *
 
╘2╤
*__inference_dense_1_layer_call_fn_11915011в
Щ▓Х
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
annotationsк *
 
я2ь
E__inference_dense_1_layer_call_and_return_conditional_losses_11915002в
Щ▓Х
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
annotationsк *
 ┐
#__inference__wrapped_model_11911079Ч()3*2+,-./45016789:;<=>?@ABC:в7
0в-
+К(
sequential_input         А
к ";к8
6
sequential_1&К#
sequential_1         ю
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11914580Ц./45MвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ю
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11914598Ц./45MвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ╞
8__inference_batch_normalization_1_layer_call_fn_11914611Й./45MвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @╞
8__inference_batch_normalization_1_layer_call_fn_11914624Й./45MвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @ю
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11914669Ц89:;MвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ю
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11914687Ц89:;MвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ╔
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11914731r89:;;в8
1в.
(К%
inputs         @
p
к "-в*
#К 
0         @
Ъ ╔
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11914749r89:;;в8
1в.
(К%
inputs         @
p 
к "-в*
#К 
0         @
Ъ ╞
8__inference_batch_normalization_2_layer_call_fn_11914700Й89:;MвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @╞
8__inference_batch_normalization_2_layer_call_fn_11914713Й89:;MвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @б
8__inference_batch_normalization_2_layer_call_fn_11914762e89:;;в8
1в.
(К%
inputs         @
p
к " К         @б
8__inference_batch_normalization_2_layer_call_fn_11914775e89:;;в8
1в.
(К%
inputs         @
p 
к " К         @╦
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11914847t>?@A<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ ╦
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11914865t>?@A<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ Ё
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11914909Ш>?@ANвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ Ё
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11914927Ш>?@ANвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ г
8__inference_batch_normalization_3_layer_call_fn_11914878g>?@A<в9
2в/
)К&
inputs         А
p
к "!К         Аг
8__inference_batch_normalization_3_layer_call_fn_11914891g>?@A<в9
2в/
)К&
inputs         А
p 
к "!К         А╚
8__inference_batch_normalization_3_layer_call_fn_11914940Л>?@ANвK
DвA
;К8
inputs,                           А
p
к "3К0,                           А╚
8__inference_batch_normalization_3_layer_call_fn_11914953Л>?@ANвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А╣
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_11914495d23*+4в1
*в'
!К
inputs         А1
p
к "&в#
К
0         А1
Ъ ╣
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_11914515d3*2+4в1
*в'
!К
inputs         А1
p 
к "&в#
К
0         А1
Ъ С
6__inference_batch_normalization_layer_call_fn_11914528W23*+4в1
*в'
!К
inputs         А1
p
к "К         А1С
6__inference_batch_normalization_layer_call_fn_11914541W3*2+4в1
*в'
!К
inputs         А1
p 
к "К         А1╖
F__inference_conv2d_1_layer_call_and_return_conditional_losses_11914820m<=7в4
-в*
(К%
inputs         @
к ".в+
$К!
0         А
Ъ П
+__inference_conv2d_1_layer_call_fn_11914829`<=7в4
-в*
(К%
inputs         @
к "!К         А┤
D__inference_conv2d_layer_call_and_return_conditional_losses_11914642l677в4
-в*
(К%
inputs         
к "-в*
#К 
0         @
Ъ М
)__inference_conv2d_layer_call_fn_11914651_677в4
-в*
(К%
inputs         
к " К         @х
P__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_11911410Р01IвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           
Ъ ╜
5__inference_conv2d_transpose_1_layer_call_fn_11911420Г01IвF
?в<
:К7
inputs+                           @
к "2К/+                           ф
N__inference_conv2d_transpose_layer_call_and_return_conditional_losses_11911261С,-JвG
@в=
;К8
inputs,                           А
к "?в<
5К2
0+                           @
Ъ ╝
3__inference_conv2d_transpose_layer_call_fn_11911271Д,-JвG
@в=
;К8
inputs,                           А
к "2К/+                           @ж
E__inference_dense_1_layer_call_and_return_conditional_losses_11915002]BC0в-
&в#
!К
inputs         А1
к "%в"
К
0         
Ъ ~
*__inference_dense_1_layer_call_fn_11915011PBC0в-
&в#
!К
inputs         А1
к "К         е
C__inference_dense_layer_call_and_return_conditional_losses_11914450^()0в-
&в#
!К
inputs         А
к "&в#
К
0         А1
Ъ }
(__inference_dense_layer_call_fn_11914459Q()0в-
&в#
!К
inputs         А
к "К         А1╣
G__inference_dropout_1_layer_call_and_return_conditional_losses_11914965n<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ ╣
G__inference_dropout_1_layer_call_and_return_conditional_losses_11914970n<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ С
,__inference_dropout_1_layer_call_fn_11914975a<в9
2в/
)К&
inputs         А
p
к "!К         АС
,__inference_dropout_1_layer_call_fn_11914980a<в9
2в/
)К&
inputs         А
p 
к "!К         А╡
E__inference_dropout_layer_call_and_return_conditional_losses_11914787l;в8
1в.
(К%
inputs         @
p
к "-в*
#К 
0         @
Ъ ╡
E__inference_dropout_layer_call_and_return_conditional_losses_11914792l;в8
1в.
(К%
inputs         @
p 
к "-в*
#К 
0         @
Ъ Н
*__inference_dropout_layer_call_fn_11914797_;в8
1в.
(К%
inputs         @
p
к " К         @Н
*__inference_dropout_layer_call_fn_11914802_;в8
1в.
(К%
inputs         @
p 
к " К         @л
E__inference_flatten_layer_call_and_return_conditional_losses_11914986b8в5
.в+
)К&
inputs         А
к "&в#
К
0         А1
Ъ Г
*__inference_flatten_layer_call_fn_11914991U8в5
.в+
)К&
inputs         А
к "К         А1л
E__inference_reshape_layer_call_and_return_conditional_losses_11914555b0в-
&в#
!К
inputs         А1
к ".в+
$К!
0         А
Ъ Г
*__inference_reshape_layer_call_fn_11914560U0в-
&в#
!К
inputs         А1
к "!К         А╠
J__inference_sequential_1_layer_call_and_return_conditional_losses_11912258~6789:;<=>?@ABCEвB
;в8
.К+
conv2d_input         
p

 
к "%в"
К
0         
Ъ ╠
J__inference_sequential_1_layer_call_and_return_conditional_losses_11912298~6789:;<=>?@ABCEвB
;в8
.К+
conv2d_input         
p 

 
к "%в"
К
0         
Ъ ┘
J__inference_sequential_1_layer_call_and_return_conditional_losses_11914073К6789:;<=>?@ABCQвN
GвD
:К7
inputs+                           
p

 
к "%в"
К
0         
Ъ ┘
J__inference_sequential_1_layer_call_and_return_conditional_losses_11914144К6789:;<=>?@ABCQвN
GвD
:К7
inputs+                           
p 

 
к "%в"
К
0         
Ъ ╞
J__inference_sequential_1_layer_call_and_return_conditional_losses_11914295x6789:;<=>?@ABC?в<
5в2
(К%
inputs         
p

 
к "%в"
К
0         
Ъ ╞
J__inference_sequential_1_layer_call_and_return_conditional_losses_11914366x6789:;<=>?@ABC?в<
5в2
(К%
inputs         
p 

 
к "%в"
К
0         
Ъ д
/__inference_sequential_1_layer_call_fn_11912372q6789:;<=>?@ABCEвB
;в8
.К+
conv2d_input         
p

 
к "К         д
/__inference_sequential_1_layer_call_fn_11912445q6789:;<=>?@ABCEвB
;в8
.К+
conv2d_input         
p 

 
к "К         ░
/__inference_sequential_1_layer_call_fn_11914177}6789:;<=>?@ABCQвN
GвD
:К7
inputs+                           
p

 
к "К         ░
/__inference_sequential_1_layer_call_fn_11914210}6789:;<=>?@ABCQвN
GвD
:К7
inputs+                           
p 

 
к "К         Ю
/__inference_sequential_1_layer_call_fn_11914399k6789:;<=>?@ABC?в<
5в2
(К%
inputs         
p

 
к "К         Ю
/__inference_sequential_1_layer_call_fn_11914432k6789:;<=>?@ABC?в<
5в2
(К%
inputs         
p 

 
к "К         ╪
J__inference_sequential_2_layer_call_and_return_conditional_losses_11912796Й()23*+,-./45016789:;<=>?@ABCBв?
8в5
+К(
sequential_input         А
p

 
к "%в"
К
0         
Ъ ╪
J__inference_sequential_2_layer_call_and_return_conditional_losses_11912858Й()3*2+,-./45016789:;<=>?@ABCBв?
8в5
+К(
sequential_input         А
p 

 
к "%в"
К
0         
Ъ ═
J__inference_sequential_2_layer_call_and_return_conditional_losses_11913386()23*+,-./45016789:;<=>?@ABC8в5
.в+
!К
inputs         А
p

 
к "%в"
К
0         
Ъ ═
J__inference_sequential_2_layer_call_and_return_conditional_losses_11913558()3*2+,-./45016789:;<=>?@ABC8в5
.в+
!К
inputs         А
p 

 
к "%в"
К
0         
Ъ п
/__inference_sequential_2_layer_call_fn_11912982|()23*+,-./45016789:;<=>?@ABCBв?
8в5
+К(
sequential_input         А
p

 
к "К         п
/__inference_sequential_2_layer_call_fn_11913105|()3*2+,-./45016789:;<=>?@ABCBв?
8в5
+К(
sequential_input         А
p 

 
к "К         е
/__inference_sequential_2_layer_call_fn_11913619r()23*+,-./45016789:;<=>?@ABC8в5
.в+
!К
inputs         А
p

 
к "К         е
/__inference_sequential_2_layer_call_fn_11913680r()3*2+,-./45016789:;<=>?@ABC8в5
.в+
!К
inputs         А
p 

 
к "К         ▌
H__inference_sequential_layer_call_and_return_conditional_losses_11911561Р()23*+,-./4501=в:
3в0
&К#
dense_input         А
p

 
к "?в<
5К2
0+                           
Ъ ▌
H__inference_sequential_layer_call_and_return_conditional_losses_11911599Р()3*2+,-./4501=в:
3в0
&К#
dense_input         А
p 

 
к "?в<
5К2
0+                           
Ъ ┼
H__inference_sequential_layer_call_and_return_conditional_losses_11913803y()23*+,-./45018в5
.в+
!К
inputs         А
p

 
к "-в*
#К 
0         
Ъ ┼
H__inference_sequential_layer_call_and_return_conditional_losses_11913908y()3*2+,-./45018в5
.в+
!К
inputs         А
p 

 
к "-в*
#К 
0         
Ъ ╡
-__inference_sequential_layer_call_fn_11911671Г()23*+,-./4501=в:
3в0
&К#
dense_input         А
p

 
к "2К/+                           ╡
-__inference_sequential_layer_call_fn_11911742Г()3*2+,-./4501=в:
3в0
&К#
dense_input         А
p 

 
к "2К/+                           п
-__inference_sequential_layer_call_fn_11913941~()23*+,-./45018в5
.в+
!К
inputs         А
p

 
к "2К/+                           п
-__inference_sequential_layer_call_fn_11913974~()3*2+,-./45018в5
.в+
!К
inputs         А
p 

 
к "2К/+                           ╓
&__inference_signature_wrapper_11913182л()3*2+,-./45016789:;<=>?@ABCNвK
в 
DкA
?
sequential_input+К(
sequential_input         А";к8
6
sequential_1&К#
sequential_1         