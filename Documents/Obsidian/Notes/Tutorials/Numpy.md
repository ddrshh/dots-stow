## Numpy vs Lists
- Numpy is faster
- Numpy stores more efficiently, needs to only store for 4 bytes byte default, i.e. int32
- No type checks
> Can be used with different libraries like [tensor flow](TensorFlow.md) , scikit-learn, etc.

To import the library:
```python
import numpy as np
```

A basic Numpy code
```python
a = np.array([[1,2,3,4,5,6],[2,3,4,5,6,7]])

a.ndim  # gives the dimension
a.size  # gives the number of data
a.itemsize  # gives an item byte size
```

to get a specific element
```python
a[0,1]
```

get a specific row
```python
a[0,:]
```


get a specific column
```python
a[:,:]
```
## Initializing Different array
```python
np.zeros((2,3,2))
```