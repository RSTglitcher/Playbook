---
title: "XSS & CSRF"
---

Cross-Site Scripting (XSS) and Cross-Site Request Forgery (CSRF)
Cross-Site Scripting (XSS)
Types of XSS (Stored, Reflected, DOM-based)
How XSS is Exploited
Mitigation Strategies
Cross-Site Request Forgery (CSRF)
What CSRF Is and How It Works
Vulnerable Code Examples
Mitigation Strategies (Anti-CSRF tokens, SameSite cookies)

---

Vulnerable Components using known vulnerable components

The library used for reading XML files is known to be vulnerable to Remote Code Execution (RCE) attacks since it cannot be configured for validation before stream deserialization. This flaw can put a risk the whole application and sensitive infomration. 

It is recommnded to check the security reports for the libraries used in the application in order to ensure no vulnerabilities are introduced. The XStream ibrary was replaced by ObjectInputStream which allows a configurable filter before deserializing the SML file. This will prevent the application from being vulnerable to RCE attacks as it happened with the previous library.

The Jackson library has a vulnerability allowing malicious code execution when trying to deserialize an object from an untrusted source.

It is necessary to specify the classes allowed for deserialisation. Also, it's required to ensure that each of them does not contain a vulnerability-promoting annotation @JsonTypeInfo(use=JsonTypeInfo.Id.CLASS) that enables polymorphic type handling. 

PolymorphicTypeValidator ptv = BasicPolymorphicTypeValidator.builder()
	.allowIfSubType("com.csw.callcenter.model.Record")
	.build();


---
XSS
Type of attack that explores vulnerabilities in websites and injects malicious client-side script that are then executed by users.
Web applications might suffer an XSS attack regardless of their back-end language. 

Web App: Displays user name upon input
HTML + CSS
Reflected/Non-persistence XSS
http://localhost:8080/greeting?name=Carlos

HACKER INPUT
http://localhost:8080/greeting?name=<strong>Carlos</strong>

---

XXE

XXE VULNERABILITIES
Using DocumentBiulderFactory XML parser with a weak configuration may allow an attacker to inject External Entities into the XML content that, when processed, could lead to disclosure of confidential information, denial of services etc.

DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();

When processing untrusted XML content, it is recommended to completely disable External Entities processing in the XML parser. The configureParser() method has been added in order to securely configure XML parser settings. In this way, if an attacker is able to inject External Entities into the XML content, it will not be processed by the XML parser.

Parsing an untrusted CML file without proper configuration may lead to an XML External Entity (XXE) attack. This type of attack uses external entity references to access arbitrary files on a system or carry out denial of service.

It is required to disable look of external DOCTYPEs external schema location, omit external entity data in the document when referece. Also it is needed to enable central mechanism to help safeguard XML processing by set "true" for FEATURE_SECURE_PROCESSING parameter

It is recommended to completely disable DTDs feature, external entities, and external document type declarations. Adding configureParser() method that configures XML parser so that it disables external entity processing, can protect the application from XXE attacks.

![XXE.png](SecurityImages/XXE.png)

---

Issues with Client Side Security Measures
Vulnerabilities occur when the server relies only on security mechanisms implemented at the client side such as input validation. To reduce processing and communication to the server, developers often place certain executions at the client side.

Stored XSS attack

FIX:
Don't rely solely on client side calculations - perform them at the server side, especially in the case of security related calculations.
Don't store sensitive information like passwords at the client side.
