---
title: "Cyber Security"
---

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

- Application Security (e.g., OWASP Top 10, secure coding, input validation)
- Data Security (e.g., encryption, hashing, access control)
- Cloud Security (e.g., IAM, security in cloud services like AWS, GCP)

<Tabs>
<TabItem value="permissions" label="Permissions">


| Permission | Read                | Write             | Execute               |
|------------|---------------------|-------------------|-----------------------|
| Level      | User(Creator)       | Group(Same Group) | Other (Rest of World) |
| Char       | -r                  | -w                | -x                    |
| Octal      | 4                   | 2                 | 1                     |
| Real-Life  | rwx                 | rx                | -                     |
| Chmod      | a (All) / o (Other) | g                 | u                     |


</TabItem>
<TabItem value="guidelines" label="Guidelines">

## Least Privileges

 When application priveleges are loosely assigned
	RISK: Attacked can manipulate back-end queries using SQL injection
	
RULE: All user, application and system functions should run with the least amount of priveleges possible to complete their role.

RULE: Administrators should implement role based accessc controls.
"Deny by default; allow on a case-by-case basis.

RULE: Processes spawned by an application should execute with the least privilege requried to get the job done and no more.


FIX: owner, user group, world = -rwx,rw-,r--

Will not stop application security weaknesses, like code injections, but makes it harder for an attacked to exploit weaknesses.

## Secure by Default

Default configuration settings of application should be the most secure settings possible
	RISK:Users / Applications / Services could be compromised
	e.g. Weak password policy to make app more user-friendly
	e.g. Weak website design. Password: drop table X
	e.g. Server side input is filtered using broken, self-made validation functions.

FIX: Design the application securely from the start. Integrate security in development lifecycle.	

2.1. Settings: Use a strong password policy.
		Min.length
		Min.numbers
		Min.special characters
		Min.lowercase
		Min.uppercase
2.2. Client side validation: Concept of "Less privelege" - run fewest needed permissions.
		
2.3. Server side, input is filtered using framework validation: Concept of "Defence in Depth". Implement layered defence mechanisms.
		ValidatedCustname := ESAPI.validateForDB(custname);
2.4. DB connection for user runs only with strictly needed permissions for operations: Enable safe security settings by default. Consider application & infrastructure.
		query := "SELECT balance FROM data WHERE
		name = ?";
		pstmt := connection.PrepareStatement(query);
		pstmt.setParameter(1,validatedCustname);
		results := connection.executeQuery();
		connection := connect_db(readonly_user)
2.5. Queries are constructed using paramterized queries: Disable an unused services/functionality.
		Least permissions + secure connections + parameterized queries means he does not have the privileges and system remains secure.


## Defence on Depth

Aims to increase the system's security by using a layered approach.
	Increasing the number of layers, reduces the attacker's change of success.

FIX:
3.1. Sensitive data is encrypted when stored in the database
		"Data" layer: Access controls, Encryption, Backup & Restore procedures
3.2. Application has extensive input validation
		"Application" layer: Authentication, Authorization, Auditing (AAA). Secure coding & Hardening.	
3.3. Hosts are patched with the latest security updates
		"Host" layer: Hardening, Authentication, Patch management, Antivirus.
3.4. Internal network is segregated into different zone protected by firewall rules
		"Internal network": Network segmentation, IPsec, TLS, NAT
3.5. Firewall separates the internal perimeter from the internet
		"Perimeter" layer: Firewalls, TLS, Denial of service, prevention
3.6. Servers are located in a badge-reader protected room
		"Physical Security": Guards, Locks, Tracking devices, Badging systems.
3.7. Security assessments are performed to check adherence


## Robust Error Checking

FIX:
4.1. Exception Handling

4.2. Provide details about error handling to you can understand the errors
	Users should be presented with as little information as possible. 

4.3. Do no disclose private information
	No stack traces, internal IP user/library information shouold be displayed to a user

4.4. Write error information to a log file for further analysis by an administrator.

4.5. Make sure the system catches all possible errors to ensure the continuation of the application. 


## Trust No Input

As a rule, services or applications should not accept input without further validations.
This avoids performing the next execution steps with possible outdated, malformed, or malicious data.

OS Command Injection
Command passed to system without validation. Attacker appends a shell command to the parameter value of request
	http://site.com/action/delete?fileToDelete=/var/www/html
Application appends the GET parameter to the command string, therefore executing the malicious command.
	file = request.getParameter('fileToDelete');
	validatedFile = validate(file);
	execShellCommand("rm-rf" + validatedFile;)
No validation step means that the malicious code is executed. BUT you can validate by creating a denylist of characters that will abort the execution.
	

FIX:
5.1. NEVER trust user input!

5.2. Limit user's options when providing input to the application (e.g. drop-down lists).

5.3. Validate all input before execution by using a secure validation scheme. Incl files/services/databases.

5.4. Perform server side validation using: Exact match/ Allowlisting/Denylisting

5.5. If possible, reject invalid data. Otherwise, at least clean or escape it.

5.6. Developers should consider validation of input coming from all types of sources: users/files/database/network/external services.

## Open Design

Vulnerabilities can occur when developers ignore "Open Design" and rely on the secrecy of an application's design or implementation to provide security.
>> Attacker could scan all the ports > find the hidden SSH service > Brute force attack

= Security by Obscurity >> Attacker could scan all the ports > find the hidden SSH service > Brute force attack
	1. Service running on a secure shell (SSH) runs on a server
	2. "Ease of use" - use strong password policy
	3. "Protection" - use default port + firewalls for prevention
		
= Hidden Authorisation >>> Attacker could manipulate this to increase priveleges
	1. Application shouldn't use hidden form field to indicate a user's privelege level when performing an action
	2. Application uses role based authorization controls. Only the administrator has the "admin" role assigned.
 
FIX:
6.1. Security controls should be based on open and known principles. Controls should be reliably secure even when an attacker knows the inner workings.

6.2. What makes systems secure is good engineering practices, not whether the source code is open. 


## Fail Securely

How an applicationshould behave in case an unexpected situation occurs.

FIX:
7.1. 2-factor authentication - Attacker could brute force hack an application if the error handling is not correct.

7.2. TLS Verification Failure - Attacker intercepts unsecure wifi. Application performs SSL pinning and cannot verify the authenticity of the server's certificate.
	If the failure is not handled correctly, the application will continue HTTP communication, allowing the attacker full controol over traffic.

7.3. Run time errors could interrupt execution and cause f ialures that jeopardize the application's security.

Developers should identify areas of fialure at design time.

Unless a user has explicitly received permissions, they should be denied access.

All actions should have a determined ourcome and exceptions must be handled using generic error messages. 3 outcomes:
	- IF a user is authorized THEN execute actions
	- IF a user is NOT authorized THEN don't execute actions
	- IF an exception happens THEN roll back actions and show an error message

Developers should always implement robust error handling. Use a generic error message in case of an exception.

Review global exception handling behaviour.


## Reuse existing security controls


Avoid overly copmlex development approaches that might increase the attack surface.
Reuse existing implementations that have proven their worth.

= Session Management
	User should be assigned a session ID that is randomly generated by the library >> Stops Attacker from discovering the session generation mechanism.
	Cookie:sessionID = api.generateSessionIdD()

= Unnecessary Duplication
	Means that if there is a bug, all locations have to be fixed. Hackers could take advantage of missed bugs.

FIX:
8.1. Keep simplicity in mind when designing and implementing your system. This means making use of proven libraries where possible, while avoiding the use of complex architectures.

8.2. Reuse existing and proven code such as libraries and frameworks.

8.3. Educate developers in your team on the use of design patterns and coding best practices.


## Logging

Vulnerabilities occur when an application doesn't log security related information or if it simply doesn't log anything at all (e.g. multiple password attempts = no lockout mechanism)
Vulnerabilities can also occur when an application logs confidential information (e.g. don't log the actual password too. If an attacker gets access, then all passwords are lost)

FIX:
9.1. Developers should centralize logging using a framework. Ensure logs are easy to view and manage.

9.2. Log activity through all of the application tiers. Key events such as successful and failed login attempts, modification of data and retrieval of data should always be logged.

9.3. 5 Ws of logging:
	What happened?
	When?
	Where? (host/network/interface)
	Who was involved?
	Where did it come from?

9.4. Avoid logging private information such as passwords/credit card information.

9.5. Always critical to restrict access to logs to authorized individuals.


## DatA Protection

When designed well, applications should implement security controls to ensure the protection and integrity of their sensitive information.

TLS Protection
Caching is turned off as well
Source code repository is stored on encrypted hardware in a secured server room. Can only be accessed from their internal network.
Repository access is limited to developers with the right clearance.
Use heavy obfuscation techniques to protect the source code in production.

10.1. Store private information if absolutely needed.

10.2. Never hard code secret information in source code.

10.3. Don't store database credentials/encryption keys in plain text.

10.4. Send traffic over a secure communication channel.

10.5. Inform users about privacy policy that has been implemented.

## Encrypting plain text credentials

Performing encryption on user credentials before storing them will conceal that information from any attacker who cannot access the encryption keys. Asymmetric encryption algorithms, such as RSA, can provide authenticity as well as confidentiality. For this reason, they are often used on communication channels during a symmetric key exchange to verify either the sender, receiver or both. For local storage, an asymmetric algorithm will provide no valuable extra security. Asymmetric algorithms are slower and should not be used for bulk encryption.

Encrypting user credential information prior to storing it successfully protects it from any intruder that does not have access to the encryption keys. Implementing a symmetric encryption algorithm for local data storage is advised. However, Triple DES (3DES) is not considered a strong symmetric algorithm and should be avoided.

Encrypting the user credentials before storing them will successfully hide them from any attacker who cannot access the encryption keys. For local data storage, it is advised to use a symmetric encryption algorithm, particularly AES. This algorithm is best used in GCM mode with NoPadding, which implies that the initialisation vectors (IVs) should be stored as well. These can be stored in plaintext and need not be kept secret.






</TabItem>
</Tabs>

Overview of Web Application Security
OWASP Top 10 Overview
Security Principles (Defense in Depth, Least Privilege, etc.)

---

Secure Development Practices
Secure Coding Principles
OWASP Secure Coding Practices
Automated Security Testing
Static Analysis, Dynamic Analysis, and Penetration Testing Tools
Secure Development Lifecycle (SDLC)
Integrating security into the DevOps pipeline

---

Real-World Case Studies
Famous Security Breaches
SQL Injection in real-world apps (e.g., Heartland Payment Systems)
Lessons Learned from Attacks
Security failures and how they were mitigated post-breach

---

Threat Modelling is a way to identify, communicate, and understand security threats and mitigations. It helps teams evaluate and prioritize threats - and then allocate security resources accordingly. A threat modelling process should be systematic and structured. There are many Threat Modelling methodologies out there such as: STRIDE and ATTACK TREES.

STRIDE THREAT MODELLING
Identify potential security issues in the app.
	(THREAT)	(DESIRED PROPERTY)
	(Spoofing - impersonation of something/someone else)(Authentication)
	(Tampering - when attackers modify data/code)(Integrity)
	(Repudiation - when someone claims NOT to have performace an action)(Non-repudiation)
	(Information Disclosure - when information is exposed to users who are not authorized to see it)(Confidentiality)
	(Denial of Service - when service is denied/degraded)(Availability)
	(Elevation of Privelege - user can gain capabilities when they don't have proper authorization)(Authorization)

ATTACK TREES
	Hierarchy flow diagram

There is no one correct way to model threats. However a threat model should cover 4 main elements:
	1. ASSETS - what needs to be protected (e.g. app)
	2. VULNERABILITIES - weakneeded that, when exploited, can cause damage.
	3. THREATS - potential damage that could occur as a result of exploiting a vulnerability.
	4. THREAT AGENTS - one who exploits a weakness to cause a threat. Insider/Outsider.

THREAT MODELLING PROCESS should include:
	1. ASSESSMENT - description/ model of the asset being worked on and a list of assumptions about it.
	
	2. THREAT AGENT IDENTIFICTION - list of agents who might be able to attack an application.

	3. THREAT IDENTIFICATION - list what could wrong.

	4. THREAT PRIORITIZATION - quantify the likelihood, impact factors etc. to determine the overall risk of each threat previously identified.

	5. REMEDIATION OF THREAT - determine what countermeasures can be applied to reduce the risk level.

FIX:
Threat modelling is most effective when done early on, so potential threats can inform app design.
Ensure business goals and requirements play a part in your model to ensure adequate protection
Threat assessments should be revisited regularly as your project and landscape evolve
Key questions:
	What are we building?
	What could go wrong?
	Where am I most vulnerable to attack?
	Which threats are most relevant?
	What are we going to do about htose threats?
	How can we safeguard against these threats?
	Did we do a good enough job?


