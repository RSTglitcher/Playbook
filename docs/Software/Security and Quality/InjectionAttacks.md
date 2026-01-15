---
title: "Injection Attacks"
---

What Are Injection Attacks?

General concept: Malicious input being executed or interpreted by the system
SQL Injection (SQLi)

How SQLi works
Vulnerable code examples
Mitigation strategies
Command Injection


SQL is the language used to communicate with the database: SELECT * FROM USER_TABLE

SOLUTION
	1. Build website properly 
		a. Proper access controls - Least privileges
		b. Validate user input data
		
	2. Query parameterisation
		a. Separate SQL statements from parameters that would call back to the database
		
	3. Limit exposure
		a. If data is sent back from a bad call, then the amount exposed

PROBLEM CODE
String pw = "123456"; 
String query = "SELECT * from users where name = 'USER' " + " and password = ' " + pw + " ' ";

HACKER INPUT
'; DROP TABLE user --

HACKER RESULT
SELECT * from users where name = 'USER' and password = ' ' ; DROP TABLE users --'

DEVELOPER SOLUTIONS
	1. Use Java's data types to your favour. If data expected is numerical, don't use String.
		a. Long 
		b. Integer
	Any attempt to pass any non-numeric data, including the kind of text necessary for an SQL attempt, would result in an error and the attack attempt would be foiled.
	
	2. Validate User Input using an Allowlist
		a. List allowList = new Arraylist(4);
		allowList.add("draft");
		allowList.add("published");
		allowList.add("updated");
		allowList.add("deleted");
		
	3. Parameterized Queries. This is the best solution as it means you do not concatenate user-supplied value. Instead, you use placeholders for those values to ensure they are never part of the text query.
		a. String query = "SELECT * from users where name = ? And password = ?";
		String user = "user";
		String password = "password";
		String query = SELECT * FROM users WHERE user = ? AND password = ?";
		PreparedStatement statement = con.prepareStement(query);
		myStmt.setString(1,user);
		myStmt.setString(2,password);

![SQLInjection.png](SecurityImages/SQLInjection.png)

---

How command injection works
Vulnerable code examples
Mitigation strategies
Other Injection Attacks

Command injection is a technique where a malicious actor tries to execute OS commands on the system hosting the application.

If a user is required to give a command, their name or input may be carried forward in other commands.
	E.g. Check if a user's directory exists then show the files in that directory.
Developer uses information provided by the user (username) and uses it in system commands.

HACKER REQUIREMENTS
	- Application has privileges/permissions to execute system commands
	- Application uses user-provided data as a part of system commands
	- User-provided data should not be escaped/sanitized before use

PROBLEM CODE

If (fileService.deleteFile(nameOfDeletingFile, principalUser.getUser())){}



---

LDAP Injection, XML Injection, XSS (briefly)
Common attack vectors and real-world cases
Mitigation techniques
Insecure Deserialization


INJECTION FLAWS - DESERIALISATION OF UNTRUSTED DATA

```java
ObjectInputStream in = new SafeObjectInputStream(fis)){

Object object = in.readObject();

if(!(object instaceof StagePositionConfig)){
	throw new InvalidClassExxception...
}

```

setObjectInputFilter = input stream will be checked to en sure tha only allowed instances are deserialized.

The deserialization process can instantiate any class available from the classpath. Among these classes there can be so-called gadgets - those can create a chain of method invocations during their construction that eventually leads to Remote Code Execution. Also, it is needed to check the metrics of the byte stream, graph size during deserialization. Otherwise, an attacker can send huge amounts of data for deserialisation which may cause a denial of service.

A DenlyListFilter don't deserialise the classes. Metrics of deserialisation objects are also checked by GlobalApplicationFilter. But an attacker still can start deserializing any class from the classpath. Some classes may require a lot of time and resources to construct, which may cause the denial of service.
AllowListFilter = deserialize on the classes listed there.
CountInputStream = checks common incoming bytes quantity during deserialization.

How to check graph size and complexity furing deserialisation to validate normal graph behaviour.

It is needed to check which classes are passed to the deserialisation process, the amount of data in the byte stream, the size of hte objects graph, and the size of arrays. The check must be performed before instantiating the deserializable object to prevent arbitrary code execution during its construction. Thus the built-in JEP 290: Filter Incoming Serialization Data feature, recommended by Oracle was used. So an attacker can pass an arbitrary class to deserialisation. 

When deserializing the XML file for the user, the lack of proper validation would allow an adversary to inject malicious objects that could lead to remote code execution attacks.

It is recommended to validate the untrusted data stream which is going to be deserialized. Usage of setObjectInputfilter method allows to filter income stream, thus protecting from deserialisation into malicious object. 

Using the java library ObjectInputStream class and its methods for deserialization, without any checks of incoming data. This allows an attacker, with appropriate preparation, to execute arbitrary code on the server-side.

Using readUnshared() method of the ObjectInputStream class instead of the method readObject() allows to protects the application from a subsequent returning of additional references to the deserialized object instance. But it doesn't protect against other vulnerabilities.

Unvalidated deserialization of untrusted data may cause the creation of malicious instances. Such instances can be customized with Remote Code Execution, which in turn leads to serious security issues. 


```java
ObjectInputStream in = new SafeObjectInputStream(fis)){

Object object = in.readObject();

if(!(object instaceof StagePositionConfig)){
	throw new InvalidClassExxception...
}

```

setObjectInputFilter = input stream will be checked to en sure tha only allowed instances are deserialized.

The deserialization process can instantiate any class available from the classpath. Among these classes there can be so-called gadgets - those can create a chain of method invocations during their construction that eventually leads to Remote Code Execution. Also, it is needed to check the metrics of the byte stream, graph size during deserialization. Otherwise, an attacker can send huge amounts of data for deserialisation which may cause a denial of service.

A DenlyListFilter don't deserialise the classes. Metrics of deserialisation objects are also checked by GlobalApplicationFilter. But an attacker still can start deserializing any class from the classpath. Some classes may require a lot of time and resources to construct, which may cause the denial of service.
AllowListFilter = deserialize on the classes listed there.
CountInputStream = checks common incoming bytes quantity during deserialization.

How to check graph size and complexity furing deserialisation to validate normal graph behaviour.

It is needed to check which classes are passed to the deserialisation process, the amount of data in the byte stream, the size of hte objects graph, and the size of arrays. The check must be performed before instantiating the deserializable object to prevent arbitrary code execution during its construction. Thus the built-in JEP 290: Filter Incoming Serialization Data feature, recommended by Oracle was used. So an attacker can pass an arbitrary class to deserialisation. 

When deserializing the XML file for the user, the lack of proper validation would allow an adversary to inject malicious objects that could lead to remote code execution attacks.

It is recommended to validate the untrusted data stream which is going to be deserialized. Usage of setObjectInputfilter method allows to filter income stream, thus protecting from deserialisation into malicious object. 

Using the java library ObjectInputStream class and its methods for deserialization, without any checks of incoming data. This allows an attacker, with appropriate preparation, to execute arbitrary code on the server-side.

Using readUnshared() method of the ObjectInputStream class instead of the method readObject() allows to protects the application from a subsequent returning of additional references to the deserialized object instance. But it doesn't protect against other vulnerabilities.

Unvalidated deserialization of untrusted data may cause the creation of malicious instances. Such instances can be customized with Remote Code Execution, which in turn leads to serious security issues. 

![Deserialisation.png](SecurityImages/Deserialisation.png)

---

JavaScript Injection

![JavaScriptInjection.png](SecurityImages/JavaScriptInjection.png)

---

LDAP (Lightweight Directory Access Protocol) Injection
Server side attack which could allow sensitive information about users and hosts represented in an LDAP structure to be disclosed, modified, or inserted.
Manipulation of input parameters afterwards passed to internal search, add, and modify functions. 

When LDAP Search Filter metacharacters are injected by the user. If the input parameter is used in a filter query to the directory server then we can attempt to enter information to make the query always true. 

PROBLEM CODE
(&(USER=username)(PASSWORD=password))
String filter = "(|(uid=" + userInput + ")(mail =" + userINput + "))";

HACKER INPUT
johnsmith)(&)

HACKER RESULT
(&(USER=johnsmith)(&))(PASSWORD=password))

DEVELOPER SOLUTION
Data should be validated against a white list of known-good characters
	- Upper case / Lower case letters and numbers 0-9.
	- Characters that do not match (e.g. special/meta characters) should be rejected
	- Server side validation on user inputs
	- Never concatenate strings

Filter filter = Filter.createORFilter(
	Filter.createEqualityFilter("uid", userInput),
	Filter.createEqualityFilter("mail",userInput));

Assessment Solution

---

Insufficient Data Escaping

```java

The translation of certain characters into a representation that preserves their meaning, but ensures that they are interpreted by the application context as plain data and not as instructions.
e.g. Converting less than (<) and greater than (>) symbols into '&lt' and '&gt' to prevent the browser from treating them as HTML when displaying them on a page.
		
& --> &amp;
< --> &lt;
> --> &gt;
" --> &quot;
' --> &#x27;
/ --> &#x2F;
```

Vulnerabilities can happen when data is not encoded at all or when certain special characters that could be interpreted, are not escaped.

XPath query - verifies provided credentials and retrieves the account privileges.

A lack of input encoding can cause SQL injection, which could result in authentication bypass and fraudulent actions. 

Code injection could also result in further escalation and command injection on the application server. On the other hand, a lack of output encoding often results in XSS vulnerabilities.

FIX:
Perform encoding and escaping on all data coming from external sources
Determine what kind of interpreter will make use of the data, and what characters should be encoded.
As a general rule, never trust user input.
Always apply application-wide encoding on all external data. 
Determine which interpreter willl use the data. Libraries exist in different frameworks.
Consider both input and output. 

---

![DeprecatedAlgorithm.png](SecurityImages/DeprecatedAlgorithm.png)

![ReinitialisationVector.png](SecurityImages/ReinitialisationVector.png)

---

What it is, how it works, how attackers exploit it
Mitigation strategies (data validation, integrity checks)
Code Injection (OS Command Injection)

---

Risks of unsafe code execution
Mitigation strategies (safe coding practices, input validation)