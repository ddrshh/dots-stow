
```python
import tensorflow as tf
```
# Introduction Module
## TensorFlow Vars

```python
string = tf.Variable("this is a string", tf.string)
integer = tf.Variable(321, tf.int16)
floating = tf.Variable(32.1, tf.float64)
```

> Ranks of Tensorflow variables give us the levels of depths of the arrays in the variables

## TensorFlow Shapes

```python
tensor1 = tf.ones([1,2,3])  # tf.ones() creates a shape [1,2,3] tensor full of ones
tensor2 = tf.reshape(tensor1, [2,3,1])  # reshape existing data to shape [2,3,1]
tensor3 = tf.reshape(tensor2, [3, -1])  # -1 tells the tensor to calculate the size of the dimension in that place
                                        # this will reshape the tensor to [3,2]
                                                                             
```
 
 The number of elements in the reshaped tensor MUST match the number in the original
```python
print(tensor1)
print(tensor2)
print(tensor3)
# Notice the changes in shape
```
 