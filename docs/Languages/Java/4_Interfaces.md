---
title: "Interfaces"
sidebar_position: 5
---

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="conditionals" label="Conditionals">

## IF STATEMENTS

The IF will be executed whether the following condition is true or not
removing the indentations will terminate the block. Anything here is not part of the if block and will always happen.

NOTE: Java uses curly brackets  to reflect blocks of code. Python does NOT do this. Python demonstrates blocks of code using INDENTS.

## #IF: 1-WAY

if condition:
sequence of statements

## #IF: 2-WAY

if condition:
sequence of statements
else:
sequence of statements


## #IF: MULTI-WAY

if condition1:
sequence of statements1
elif condition2:
sequence of statements2
else:
default sequence of statements3

## FOR STATEMENTS

A FOR loop is shorter and easier to understand. In each iteration, the item will automatically hold one value in list.
A FOR loop can iterate through the list to 1 value at a time.

for word in list:
if not word = "Rebecca"
// puts in the first appearance of the word in a list - UNIQUE
count +=1
list.append(word)


## #FOR EACH: HASHMAP

for each ((k,v) in hashmap)
statement
...
statement-n

## #FOR EACH: LIST

public void forEachMethod()
int counter = 0;


List (Class) listname = attributename.getAttribute();
List (Class) listname;
List (Class) listname = othername.getMethod();


For (Class eachitem:listname)
attribute.action(eachItem);
SOUT("Print something to confirm: " + attributename);



## #FOR: IF ELSE

public void methodName((datatype) attributeName)


List (Class) listname = attributename.getAttribute();



For (Class eachitem:listname)
if(eachiteam instanceof Object)
attribute.action(eachitem);
Else
attribute.action(eachitem);



## WHILE STATEMENTS

Treats a statement as true and perform an action until  the condition is confirmed to no longer be true




public void methodName((datatype) attributeName)

x = 5;
List (Class) listname = attributename.getAttribute();



While (Class item < x )
SOUT("Do this");
Class item ++



## #DO WHILE:

public void methodName((datatype) attributeName)

List (Class) listname = attributename.getAttribute();


For (Class item:listname)
do
SOUT("Counter value is: " + counter);
counter ++;

    while (listname.hasNext())
    String element = listname.next();
    SOUT("output");

</TabItem>
<TabItem value="comparable" label="Comparables">

## Comparable

IMPLEMENT Comparable interface:
Specify the type that the implementing class will be compared against. This sorts the list in a natural order
on this attribute e.g. title = alphabetical


```java
Class ____ implements Comparable(Object)
 Class instance attributes
 public int compareTo(Name n)
 return title.compareTo(n.getAttribute());


IMPLEMENT Comparator interface:
 Implement a Comparator where list can be sorted on more than one attribute


Class ____ implements Comparator(Object)
 Class instance attributes
 public int compareTo(Object o1, Object o2)
 if(o1.getAttribute() > o2.getAttribute())
 Return 1;
 Else  (o1.getAttribute() < o2.getAttribute())
 Return -1;
Else
 Return 0;
```

</TabItem>
<TabItem value="generic" label="Generics">

## Generics

Generics EXTENDS Comparable: Makes collections type-safe.
You can set the data/object type. This prevents the problems which are caught at compile-time instead of runtime.

```java
public class GenericList(E) EXTENDS ComparableList(E) 

 Private ArrayList(E) listItems;
//Constructor for Generic List = datatype unknown
 public GenericListEG(ArrayList(E) listItems)
This.listItems=listItems;
//Declare a generic type method
 Public void genericMethod(List(Song) list)

public class (T extends Class) void takeThing(ArrayList(E) list)
```

</TabItem>
<TabItem value="optional" label="Optionals">
</TabItem>
</Tabs>









