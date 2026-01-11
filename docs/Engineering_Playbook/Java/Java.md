---
title: "Java"
sidebar_position: 3
---

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="install" label="Install">

<details>
<summary>1. Start up</summary>

1. [Download the JDK](https://www.oracle.com/java/technologies/downloads/)
2. [Java Versions](https://www.oracle.com/java/technologies/downloads/archive/)
3. Installer: Windows / MacOS / Linux
4. Install the JDK and verify
```shell
open ~/.bash_profile or open ~/.zshrc
export JAVA_HOME=/Library/Java/JavaVirtualMachines/<jdk_version>/Contents/Home
java -version
```
</details>

<details>
<summary>2. Server Connections</summary>

sudo: "Superuser Do" (Administrator level - be careful! The default keystore password is typically 'changeit.')

```shell
sudo keytool -import -alias your_alias -file /path/to/your/certificate.crt -keystore /path/to/your/keystore.jks
```

| Tool                    | Function                                                | Why                                                                                                      | Example                                                                                                                                 | Example                                                                                |
|-------------------------|---------------------------------------------------------|----------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------|
| **Java keystore files** | Store Trusted CA (certificate authority) certificates.  | Certify the authenticity of SSL/TLS certificates presented by servers during secure connections (HTTPS). | Java application connects to a server using SSL/TLS and signed by a custom CA. Import CA certificate to establish a secure connection.  | Server uses a self-signed SSL certificate. Import on client side to trust the server.  |
|**Nexus Repository Manager**| Store and manage artifacts (e.g. Java libraries) in a central repository.| Nexus Certificates are SSL/TLS certificates used by NRM.                                                 |If NRM uses HTTPS, you need an SSL/TLS certificate. Needs to be trusted by clients (build tools/developers' machines) to establish secure connections.|If Nexus server uses a custom SSL/TLS certificate you might need to import the certificate into the keystore on the client side to establish a secure connection.|

</details>


Questions to Answer:

- How to make a type e.g. Customer?
- How do you make a constructor?
- How do you make a method?
- What is static? What does this mean?
- What is a static class vs non-static class?
- What is a static method vs non-static method?
- How do you know how to choose between these?
- What is an enum?
- What does it do?
- How is a constructor different from a method?
- How do you assign a fixed value to an item?
  > - Set up a class > declare Getters/Setters
- How do you check quantity of an item?
  > - Set up list
  > - Fill list
  > - Return

#### Inheritance
- WHat must each class do?
- What must they all do?
- What needs to change for their separate actions to work?
- What do the musts have in common?
- What is @override?

#### Testing

- What is JUNit
- Cannot test private/static classes directly
- Can indirectly test by calling a public method from a private class - How?
- Randomizes testing to ensure 1 test is not depdendent on another
- JUNIT create new objects per test

</TabItem>
<TabItem value="basics" label="Basics">

## Reserved Words

| Word             | Example                   | Description                                                                                                                                                                                        |
|------------------|---------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| assert           | assert condition, message | used for debugging. Checks is assumptions are true                                                                                                                                                 |
| async/await      | awarit asyncio.sleep(1)   | used to write concurrent code (import asyncio library)                                                                                                                                             |
| break/continue   | break/continue            | used to alter their normal behaviour of for and write break ends the smallest loop and controls the flow of the statement. continue ends the current iteration of the loop, but not the whole loop |
| class/def        | def function1(parameters) | used to define a new user-defined class. Define a single class at a time                                                                                                                           |
| del              | del a                     | used to delete the reference of an object                                                                                                                                                          |
| if/else/elif     |                           | used for conditional branching / decision-making                                                                                                                                                   |
| except/raise/try |                           | used with exceptions. These are basically errors that suggests something went wrong while executing our program                                                                                    |
| finally          |                           | used with the try...except to close up resources of file streams                                                                                                                                   |
| for              |                           | used for looping. When we know the number of times we want to loop                                                                                                                                 |
| while            |                           | used to test a value is true until it stops being true                                                                                                                                             |
| with             |                           | used in exception handling to make the code cleaner and much more readable                                                                                                                         |
| yield            | yield i*i                 | used inside a function like a return statement. Returns a generator in a sequence of values                                                                                                        |
| lambda           |                           | used to create an anonymous function. It is an inline function that does not contain a return statement                                                                                            |
| global           |                           | used to declare that a variable inside the function is global (outside the function)                                                                                                               |
| ###              | #Comments                 | used to add commetns and notes in the code                                                                                                                                                         |


----------------------------------------------------------------------------------------------------------------

## Text Methods

| Methods             | Example            | Description                                                       |
|---------------------|--------------------|-------------------------------------------------------------------|
| .find               | name.find          | Returns index of the character(s) you are looking for in a string |
| .replace            | name.replace       | Replace this value, Use this value instead                        |
| .upper/.toUpperCase | name.upper         | converts to upper case                                            |
| .lower/.tolowerCase | name.lower         | converts to lower case                                            |
| .count              | name.count         | count how frequently a value appears                              |
| .split              | name.split         | split a string by this value                                      |
| .contains           | name.contains(x);  | check if String contains value x                                  |
| .length             | name.length        | check length of String                                            |
| .remove             | name.remove(x);    | remove value from  String                                         |


Reverse print a string 

```java

for word in range (len(String)-1,-1,-1):
        print(String(word), end = " ")

```

---

## List Methods

Lists are objects - so you can have lists of methods of actions available.


| Methods     | Example                            | Description                                          |
|-------------|------------------------------------|------------------------------------------------------|
| .append     | listName.append                    | adds to the end of the list                          |
| .insert     | listName.insert(index,value);      | insert a value at a specific point                   |
| .remove     | listName.remove                    | removes specific values from list                    |
| .clear      | listName.clear                     | clears the whole list                                |
| .len        | listName.len                       | count items in list                                  |
| .range      | listName.range(lower,upper,steps); | for any object that represents a sequence of objects |
| .join       | listName.join                      | joins item in a list to make a string                |
| .add        | listName.add                       | add item to a list                                   |
| .size       | listName.size                      | check the length of a list                           |
| .contains   | listName.contains(x);              | check if a list contains value x                     |


### Arrays


.indexOf
.lastIndexOf
.get

---

### Mathematics
BODMAS: Brackets Operator Division Multiplication Addition Subtraction

| BODMAS                | Example           | Description            |
|-----------------------|-------------------|------------------------|
| orders                | print(x**y)       | returns orders         |
| division              | print(x%y)        | returns remainder      |
| multiplication        | print(x*y)        | returns multiplication |
| augmented addition    | print(x+=y)       | x=x+3                  |
| augmented subtraction | print(x-=y)       | x=x-3                  |
| integer               | print(x//y)       | returns integer        |
| float                 | print(x/y)        | returns float          |
| sqrt                  | math.sqrt(this)   |                        |

</TabItem>
<TabItem value="tools" label="Tools">

## LinkedList

Wrappers/String
main
LinkedList name = new LinkedList()
- name.remove from the front
- add something to the end of a list
- iterate to find something

```java
Iterator it = name Iterator();
while(it.hasNext(I)){

}
```

## ArrayList

```java

String[] name = new String[]

ArrayList nameList = new ArrayList();
    nameList.add();
More flexible to see contents
Do not have to change # saive to add objects. 
Flexible size
True/False --> system print statements.

```

## HashSet

Structure is hashed unreliable.

```java
HashSet h = new HashSet();
Need to say type of data
HashSet <type>h = new HashSet<type>();
h.add();

HashSet h1 = newHashSet();
Wrappers

Iterator<type> it = h1.iterator();
    while it.hasNext(){
        syso(it.next());
}

```

## HashMap

```java
HashMap<type,type> h = new HashMap<type,type>();
    h.put(a,"1");
    h.put(b,"2");
    h.get(key,value) - replace these when searching for value.
```

## TreeMap

```java
JUnit TreeMap

Comparable
COmparator
```

</TabItem>
<TabItem value="pattern" label="Design Patterns">

### CREATIONAL


- Singleton: 1 instance
One instance in memory for duration of program. Manage a shared resource used by the whole application.
Key method - getInstance(). Singleton: can only have one instance of this case.
e.g. Stops someone overduplication in connection pool - you can make an instance of it to stop over duplication.

<details>
<summary>Code Implementation</summary>

        Public class MySingleton
        
        //MUST have private static instance of the class
        Private static MySingleton ms;
        
        Public static MySingleton;
        //private constructor – stops you creating instance of class yourself.
        Private MySingleton()
        
        //use getInstance. Anyone using this class, therefore shares it – uses the same instance.
        Public static MySingleton getInstance()
        If(ms == null)
         ms = new MySingleton();
        
        Return ms;

Command: can only have one instance of this case.
e.g. Stops smoeone overduplicating in connection pool - you can make an instance of it to stop over duplication.


        //1.CLIENT
        Public  class Customer  MAIN METHOD
        Chef chef = new Chef();
        Order order = new Order(chef);
        Waiter waiter = new Waiter();
        Waiter.takeInstruction(orderSlip);

        //2.INVOKER – does the execution. Passes Command to Received
        Class Waiter
        Public void takeInstruction(OrderSlip cmd)
        SYSO(“Taking order”);
        cmd.execute();

        //3.COMMAND
        Class Order
        Private Chef chef;
        Public orderSlip(Chef chef)
        This.chef = chef;
        
        Public void execute()
        SYSO(“Place order);
        Chef.cookMeal();

        //4.RECEIVER
        Class Chef
        Public void cookMeal()
        SYSO(“Meal Ready”);

</details>


- Factory: Objects to obtain
Single Responsibility to create objects from a hierarchy of classes without specifying the exact class of
the object to be created. Factory: have an object to keep. Consumer pov.
e.g. User wants a trader, so call the method that creates one.
<details>
<summary>Code Implementation</summary>

        Public class TheFactory
        
        Public static Trader createATrader()
        Return new Trader();
        
        
        //call the object to keep
        Trader trader = TheFactory.createATrader();
</details>

- Abstract
- Builder

- Object Pool: Re-usable object
Holds a 'pool' of objects of the same type. Re-use objects, rather than creating a new one each time one
is needed. Place a limit on the number of objects in circulation

---

###  BEHAVIOURAL

- Observer: Subscribe/Unsubscribe
One object (the observable) notifies many objects (the observers) each time its state changes. Use it
when an object needs to send notification to many loosely coupled objects

- Strategy
- Command
- Template

Command: 4 pieces of...
Object encapsulating a method call. Use when an action needs to be stored and performed at a later time.

---

## Structural

Adapter: Enable things to work together
Like the plug. Middleman between things which don't normally work together.

Object Pool: list/ pool of things to be used on a short term basis. Bring it back for someone
else to use.
List of connections ready for action – pre-built, ready to be use. E.g. Do not need DB connection al the time, so you
can return it for someone else to use.

<details>
<summary>Code Implementation</summary>

        Public class ConnectionPool
        
        Private List(Connection) avaialbleConnections = new ArrayList(Connection)();
        Private int howManyConnections = 0;
        //use connection
        Public Connection checkout() throws SQLExceptions
        howManyConnections++;
        return avaialbleConnections.get(howManyConnections-1);
        //return connection
        Public Connection checkin(Connection c)
        howManyConnections --;

</details>

</TabItem>
</Tabs>

