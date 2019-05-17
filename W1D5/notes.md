ADT - Abstract Data Type
* Set : all objects are unique 
   * put something in the set (set)
   * check if an element is inside (include)
   * delete something in the set (delete)

An array **can** implement a set. 
   * need to worry about duplicates
A hash map **can also** implement a set, i.e. 
   * don't need to worry about duplicates

```
{"hello" => true, "goodbye" => false}
```

Both arrays and hash maps can implement this API (all the methods involved in a Set). 

A **map/dictionary** is another **ADT**.
A **map** should have **unique keys**.  
   * set (key, value)
   * get (key)
   * delete (key)

A **hashmap** is the most common implementation of a **map** in Ruby. 
An **array** is another possible implementation of a **map**, i.e. 

```
[["hello", "world"], [2, 4]]
```

Some algorithms demand certain abstract data types. 

## Stacks ##
* supports push
* supports pop
* can use **array** for implementation
* **LIFO** : "unfair"

All recursive algorithms can be converted to iterative algorithms - the only difference is instead of relying on the system's implicit stack frames, you have to go in there and create the stack data structure yourself. 

Recursion === you can do it with a stack (implicit in recursion algorithm)

## Queues ##
* **deque** : get served
* **enque** : get in line 
* **FIFO** : "fair"

* supports push and shift
* supports unshift and pop 

## Trees ##
* **binary tree**
   * each node has at most **two children**
   * each node has at most **one parent**
* **ternary tree**
   * each node has at most **three children** 
* **unary tree**
   * normally also known as a **linked list**
* **n-ary tree (poly tree)**
   * can have many children 
* **depth**: deepest path to a leaf node 

