---
title: "Testing"
sidebar_position: 5
---


import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

## Testing

    - TDD
    - JUnit
    - Mockito

<Tabs>
<TabItem value="junit" label="JUnit">

### 1. Test Driven Development
**Create Tests ------> Write Code to fix**

**Arrange:** Set up preconditions
<br/>
**Act:** Call code to test
<br/>
**Assert:** Check expected results

<ins>5 Steps tp apply to smallest testable piece of unit code:</ins>

    1. Write a Failing Test - relies on code not yet written
    2. Make Test Compile
    3. Watch Test Fail
    4. Write minimum amount to pass test
    5. Refactor and generalise for additional

### EXAMPLE: JUnit

    @Test - method is a test
    @BeforeEach - run before each test
    @AfterEach - run after each test
    @BeforeAll - run once before any test
    @AfterAll - run once after all tests

</TabItem>
<TabItem value="cucumber" label="Cucumber">

### 2. Behaviour Driven Development
**Create Tests ------> Write Application Code**

<ins>User Stories play a larger role:</ins>

    Feature: Check login functionality
    Scenario:
    Given user is on login screen
    When user enters valid username and password
    And clicks on login button
    Then user is navigated to home page

###EXAMPLE: Mockito - where objects return as void. Allows you to test behaviour.

    @Mock
    @ExtendWith(MockitoExtension.class)
    MyClass myClass = mock(MyClass.class);
    
    Stubbing
    when(mockObject.method(3)).thenReturn("Third");
    verify(mockObject).myMethod("one");
    verify(mockObject,times(1)).myMethod("one");

###EXAMPLE: Cucumber & Step Definitions

SET UP: CUCUMBER TESTING
1. Create Maven Project
2. Add Maven Dependencies to POM
   Cucumber Java | Cucumber JUnit | JUnit | Selenium Java
3. src/test/resources
   > Create Features folder
   > Create login.feature file
4. Download Cucumber plugin from Eclipse Marketplace
5. Create another feature file and add contents- run this as Cucumber application. Console reflect Glue Code.
   Feature
   Scenario
   Steps
   Scenario Outlint
   Example
   Tags
   Comments
6. Add Step Definitions/ Glue Code under src/test/java package
7. Create a Runner Class to run multiple Feature files
8. Add Cucumber Options fo generating reports: HTML | JSON | JUnit/XML
9. Run and verify results

**FEATURE FILE**
<br/>The feature file contains all instructions, methods, and scenarios to run through step definitions.

    SCENARIO OUTLINE:- Where 1 or more scenarios are being run.

    Given
    And
    When
    Then

    EXAMPLES:

    |Endpoint|RequestPath|Headers|SourceNm|ResponsePath|MessageType|OrgSourceNm|StatusCode|Validations|

**1. STEP DEFINITIONS:**
Generate Step Definitions to guide what code Cucumber will execute.
<br/><br/>DEFINITION: A small piece of code with a pattern attached to it. AKA a java method in a class with an annotation above it.
Step definition pathways should be dynamic to select the newly created feature files as they appear.

<br/>Annotation &larr;&rarr; Pattern &larr;&rarr; Step Definition &larr;&rarr;Steps.

<ins>Runner</ins>

    @RunWith(Cucumber.class)
    @CucumberOptions(
    tags = "@DEV",
    features = " ",
    glue = {"steps"},
    plugin = {"pretty", ""}
    )

</TabItem>
</Tabs>