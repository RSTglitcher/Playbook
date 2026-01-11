---
title: "Writing"
sidebar_position: 1
---

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="code" label="Code">

Statement   -  ends in a semicolon;
Code block  - defined in a pair of curly braces
Variables   - declared with data type;
=           - Assignment Operator
==          - Equals Operator
Boolean     - defined inside parenthesis (( less than; ) greater than, == equals)

//Source code file holds one class definition. Represents a piece of your program.


```java
public class Class

        //Methods must be declared inside a class
        void method1

            //Instructions must be written inside the method
            instruction1;
            instruction2;
```


</TabItem>
<TabItem value="init" label="Initialise">

### 1. INITIALISE AN OBJECT

1. Memory Handling
- How to make objects eligible for  GC. Otherwise, you may lose something you didn't intend to!

| Accessibility         | Return type               | DataType        | variableName;  |
|-----------------------|---------------------------|-----------------|----------------|
| final static long     | private public protected  | String int etc. | variableName   |

***CONSTRUCTOR***
Initialise a variable/object to use in another class.
Parameters passed through as arguments only live for as long as the constructor.
You only call a constructor once - edit the variable here.

Constructor c = new Constructor();
OR
public constructorclassName (Datatype1 varName1, Datatype2 varName2)
NOTE: The constructor class is used to initialise/introduce variables from another class to be used
here. constructorclassName = the name of the class where that variable was first written

</TabItem>
<TabItem value="operation" label="Operations">

A single, atomic computation or action that can be performed on data. 

### Type Casting

### Downcasting to the right type: (InstanceOf(Plane -) Car)

//instanceof keyword is used to determine the correct type of an object

if(vehicle instanceof Car)
Car car = (Car) vehicle;
//core to call car methods

if(vehicle instanceof Plane)
Plane plane = (Plane) vehicle;
//core to call plane methods

Vehicle -) Car

Car car = new Car();
Vehicle vehicle = car;
Car downcastCar = (Car) vehicle;

###Upcasting to the right type: (InstanceOf(Car -) Vehicle)
//Explicit Casting

Car car = new Car();
Vehicle vehicle = car;

//Implicit Casting

ArrayList(Vehicle) vehicles = new ArrayList(Vehicle)()
Car car = new Car();
vehicles.add(car);

### Upcast / Downcast
public class Animal

public class Dog extends Animal

public static void main (String [] args)
Dog dog = new Dog();
Animal dog = new Dog(); //UPCAST
Dog anotherDog = new Animal(); //WILL NOT WORK
Dog anotherDog = (Dog)(new Animal()); //DOWNCAST


---

### Arithmetic Operations

---

### Comparison Operations

</TabItem>
<TabItem value="methods" label="Methods">

A reusable block of code that performs a specific task or set of tasks. Methods/functions are typically defined with a name,
a set of parameters, and a body of code. They encapsulate a sequence of operations and are designed to be invoked or called
from other parts of the program.

### 2. WRITE METHODS
Describe behaviour/functionality of object

| Accessibility            | Return type           | DataType        | methodName     | expected output(s)    |
|--------------------------|-----------------------|-----------------|----------------|-----------------------|
| public private protected | abstract void static  | String int etc. | methodName     | ( arg1 ,arg2,etc.)    |

e.g. public static void main(String[] args)
void waddle();
void quack();

        //Getters//Setters
        //Access the member variable directly - Breaks encapsulation

### LAMBDAS

| Method                         | Lambda                                                |
|--------------------------------|-------------------------------------------------------|
| public String getFullName(P p) |                                                       |
| return person.getFirstName +   | person -) person.getFirstName + person.getLastName(); |
| person.getLastName();          |                                                       |

        Public class Duck
        //Instance Variable – fields that each object of the class will have
        private instance variable;
        
        //Lambdatype(Parameter datatype, Return value datatype) Objectref = newname -)
        newname.method() + “ “ + newname.method();
        Public void duckMethod(Duck duck)
        //Local Variable – temporary to assign fields to this method only.
        (Datatype) (parameter1, parameter2) -) expression
        
        Runnable r2 = (Runnable)() -) SYSO(“ “);
        Datatype name = (parameters) -) expression
        
        BiFunction (Parameter1, Parameter2, ReturnType) ___ = lambda
        Comparator(type)_____ = (__,__) -) _____.getStream().compareTo(____.getStream());
        Trainees.removeIf(trainee -) trainee.getAverageGrade()lessthan 50);
        Return duck;


</TabItem>
<TabItem value="interface" label="Interface">

#### FUNCTIONAL INTERFACE:
Specify datatypes of lambda's parameter and datatype of its return value

*Examples*

name.forEach(Consumer(? super Person) action);
name.removeIf(name-)name.getAverageAge()lessthan50);
Collections.sort(item,comparator);
Comparator[type]name = name.thenComparing(___);

**Map Merge**

map(String, Integer) name = new HashMap()();
for (Type 1:2)
String name = 1.getStream();
name.merge(arg1,arg2,etc.) -) return1 + return2);



| Functional Interfaces | Example                                                                      | Description                                                     |
|-----------------------|------------------------------------------------------------------------------|-----------------------------------------------------------------|
| Function              |                                                                              | Description                                                     |
| BiFunction            | BiFunction[Parameter1 , Parameter2, ReturnType] name = lambda;               | 2 arguments                                                     |
| Predicate             | Predicate[ResultDataType] ref = value-) val == ref.test(parametertoTest);    | Boolean                                                         |
| BiPredicate           |                                                                              | Boolean + 2 arguments                                           |
| Urnary Operator       |                                                                              | 2 arguments and returns a value. Must all be the same datatype. |
| Binary Operator       |                                                                              | 2 arguments and returns a value. Must all be the same datatype. |
| Consumer              |                                                                              |                                                                 |
| BiConsumer            |                                                                              |                                                                 |
| Comparator            | Compartor [type] name = (__,__) -) __.getStream().compareTo(__.getStream()); |                                                                 |
| Supplier              |                                                                              |                                                                 |


</TabItem>
<TabItem value="class" label="Class">

### 3. Types of Classes
### Classes
4_Pillars_OOP.md

### INTERFACE
Describes how the outside world (other classes) can interact with a class. A list of abstract methods.
A class can implement multiple interfaces. A class can only extend one class.

Methods and attributes are ABSTRACT by default. Cannot be instantiated.

void Vehiclemethod(data data);

Class IMPLEMENTS the interface:

@Override
Public void Vehiclemethod(data data)

Call and implement the class:

Class class = new Class();

Class.method(parameters);

</TabItem>
<TabItem value="error" label="Error Handling">


##  Error Handling

Throws declaration and pushes the responsibility back to the caller.
Throw: if you don't know what context the class is being used in.
Try/Catch: do this first if possible to handle it locally.

**Throwable**
Throw a declaration that pushes the responsibility back to the caller.
- Throw: If you don't know what context the class is being used for.
    - Try/Catch: Use this as the default where possible so you can handle the code locally.

          THROW CATCH - HANDLES EXCEPTION
          Try
          //code which  may cause exception
           catch (Exceptiontype ex)
          //catch exception and deal with it
          SYSO(“Error”);
           finally
          //clean up resources
          SYSO(“Success”);

          THROW - DECLARE EXCEPTION
          Public void methodName() throws ExceptionName 
          If(event)
          Throw new ExceptionName();

Create your own Exception:

    Public class MyException extends Exception
    Public MyException (String message)
    Super(message);

Might throw exception, defensive coding:

    Public void my Method() throws MyException
    If ((strings == null || strings.isEmpty()) return null;)
    Throw new MyException(“message”);
    Super(message);
     try
    openFile(“”)
    Ioe.printStackTrace();



##  OPTIONALS - Null Handling

Class designed to avoid null pointer exceptions. This is useful when chaining method calls. This is a wrapper class to contain either an object or a null value
If applied where there is a Null, you get a Null Pointer. It should be used alongside .isPresent() boolean to say whether the optional contains anything.


    public Optional Class getMethod()

    //cannot use get() as the optional objects contain null values - No such Element exception
    return Optional.ofNullable(_____); 
  
    //make sure the optional object doesn't contain a null value. This method will only be called if the object is present.

    if (value.isPresent())
    ___ ___ = ___.get();

    //Replace null with an Optional with dummy value e.g. print the size of a list, but if the list is empty it will return null

    int value = listname.getMethod().orElse(newArrayList()).size();

</TabItem>
</Tabs>
