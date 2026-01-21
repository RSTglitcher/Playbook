---
title: "Scala"
sidebar_position: 4
---

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="install" label="Install">

Get started:
- Mentors
- Ways of working
> - ingestion-factory-training repo
> - ~6 weeks for the 6 chapters
> - Goal is to support new engineers - new to engineering / new to Scala.
> - Should be able to do this at your own pace and pick/choose as you need
> - Harry is managing the program (i.e. Board)

- How to:
> - README
> - Guide for the task
> - Go to Chapter > Issues > New Issues > Get Started on the Chapter
> - Add it to the gst-data-scala-school board (so they can track your progress and to your team's board)
> - Can use branch + tags to assign who is doing what. Branch = GroupNumber-Name
> - Ask in your Group slack channel for a review
- Questions


</TabItem>
<TabItem value="oopbasics" label="OOP Basics">

| Scala Constructs  | Description                                                                                                                             | Example                                                 |
|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------|
| Classes           | Create object instances                                                                                                                 | class Person (var name: String, var age: Int)           |
| Objects           | A class that has exactly one instance                                                                                                   | object StringUtils.                                     |
| Companion Objects | An object that has the same name as a class. A companion class or object can access the private members of its companion.               | class Circle , object Circle                            |
| Traits            | Scala trait is similar to a Java interface. Contains: abstract & concrete methods and fields. More flexible than abstract classes       | trait Employee: def id: Int , def firstName: String     |
| Abstract Classes  | A class with abstract members, you can either create a trait/abstract class. Use this if calling Java code.                             | abstract class Pet (name: String): def greeting: String |
| Enums             | An enumeration can be used to define a type that consists of a finite set of named values. Extend the java class: java.lang.Enum.       | enum Directions: case north, south, east, west          |
| Case Classes      | Case classes are use to model immutable data structures                                                                                 | case class TeamName(name: String, teamSize: Int)        |
| Case Objects      | Provide a number of automatically-generated methods to make them more powerful. Useful when you need to pass immutable messages around. | case object status extends Message                      |


| Scala Fields | Description             | Example                                       |
|--------------|-------------------------|-----------------------------------------------|
| var          | mutable - read & modify | var p = Person ("Robert Allen Zimmerman", 12) |
| val          | immutable - read only   | val p = Person ("Robert Allen Zimmerman", 12) |

| Scala Methods | Description                    | Example                                     |
|---------------|--------------------------------|---------------------------------------------|
| Constructor   | Access an instance of a field  | p.name                                      |
| Method        | Defined in the body of a class | def printFullName: Unit = println(fullName) |



</TabItem>
<TabItem value="fpbasics" label="FP Basics">

In Functional Programming, the data and the operations on the data are 2 separate things. No need to encapsulate them
together like you do with OOP. 

**Organise Functionality**

- Define your functions in companion objects
- Use a modular programming style
- Use a "functional objects" approach
- Define the functionality in extension methods
- 


| Functional Programming Modelling | Description                    | Example                                     |
|----------------------------------|--------------------------------|---------------------------------------------|
| Enumerations                     |||
| Case classes                     |||
| Traits                           |||



</TabItem>
<TabItem value="libraries" label="Libraries">

## SBT - Simple Build Tool

This is a library commonly referred to as a build tool. It is ued to define, manage, and execute the build process for Scala projects. 
SCT uses a build definition file to specify project settings, dependencies, and tasks: **build.sbt**

## Skuber - Scala for Kubernetes

This is a client library that provides Scala APIs to interact with Kubernetes

</TabItem>
</Tabs>