---
title: "Insecure Data Storage"
---

SIDE CHANNEL VULNERABILITY - TIMING ATTACK

The difference in response times when a user validation succeeds or not would allow an attacker to gather information about registered users and carry out further attacks.
 
e.g. authAttemptService.save(userEntity,false) >> passwordHashService.simulate();

In a situation where the login is not correct, it is also recommended to calculate the password harsh so that an attacker could not guess anything. The application calculates the password hash both with successful auto-login and with incorrectly entered login. Thus an attacker would not be able to use a passing attack to determine how long it would take for a program to generate an "authenticated" or "no" response.


---

Vulnerable Components - Using Components from untrusted sources
Check pom dependencies - open source?

Broken Authentication Vulnerabilities

Use Java library methods developed for prevention standard injections to proect code and LDAP data.

DirContext.search() - escapes all special symbols in the input string. Hackers will not be able to access the data/ damage it.

It is recommended to use the JDBC's PreparedStatement Interface with its method set(). This interface represents the user input as a query parameter, avoiding special symbols, thus protecting the application from SQL injections.


---

Insufficient HTTP Headers
Occurs when the web application does not provide one or more of the HTTP security headers which are aimed at mitigating certain attacks, or improving the security posture.
e.g. Strict Transport Security: max-age-31536000; include subDomains
header configured in an insecure way 
e.g. XPowered by-PHP/5.2.6 - can be publically exploited

Vulnerabilities are a result of missing/incorrectly configured HTTP security headers in the web application

e.g. root@attacker:/#./exploit $>whoami webuser

Possible issues include:
	- Cross-Site Scripting
	- Clickjacking - if frameable page
	- Insecure Communication - headers could leak information about the environment
	- Man In The Middle attack - if HSTS and Key Pinning headers are missing.

FIX:
	Always make sure to use the most secure implementation of newly added headers

	Set the following headers with a correct configuration

	X-XSS-Protection
	This enables an in-browser XSS filter
	X-XSS-Protection: 1; mode=block

	X-Content-Type-Options
	This prevents the browser from MIM sniffing a response to another content type.
	X-Content-Type-Options: nosniff

	Content-Security-Policy
	Content Security Policy can prevent a wide range of attacks, including XSS.

	Set the following headers with a correct configuration:
		X-Permitted-Cross-Domain-Policies
		Restricts access to data by Adobe Flash Player
		X-Permitted-Cross-Domain-Policies none
	
	Set Server header to a custom value, or a generic as Possible

	Remove X-Powered-By header

---

CSP, SOP, and CORS

CORS - Cross-origin Resource Sharing is a standard consisting of headers. Allows overwriting SOP and making resources, such as APIs, available to other origins. Request Headers automatically set when making a call to a server.
	Issues with origins occur when CORS headers grant access to an application's resources to external parties. 
	Can be set too broadly by specifying a wildcare, allowing all external origins.
	Access-Control-Allow-Origin: Specifies a URL that may access the resource.
	FIX:
	Determine whether resources need to be available to other origins.
	Then avoid configuring too broadly. You should never allow public access by specifying wildcards.

CSP - Content Security Policy header allows an application to define origins of content allowed to load on its page (javaScript, HTML frames, applets).
	e.g. https://example.com/assets/js/file.js
	e.g. https://example.com/assets/css/file.css
	Missing header could allow external sources to be loaded in an application. 
	Missing CSP header would not restrict sources that could be loaded in the application.
	
	Access-Control-Allow-Methods: Specifies the allowed methods when accessing a resource.
	Has directives for every type of resource. EXAMPLES ->
	script-src: Defines which script can be executed.
	form-action: List valid endpoints for form submissions.
	child-src: Defines allowed contents for embedded frames.
	object-src: Limits where Flash and other plugins can be loaded from. 
		PREVENTS: Cross-site scripting / Clickjacking / Other Content Injections
	FIX:
	Determine which resources should be able to run
	Explicitly specify resources for every page
	Set a default-src

SOP - Same Origin Policy is a security mechanism that isolates sources from different origins.
	origin = protocol + host + port
		http:// + www.example.com: + 80

Scripts executed on one site will not be able to access certain resources (e.g. cookies) from another site.

Hacker methods:
	(CSP) `<iframe>malicious.com</iframe>`
iframe loaded when a user accesses the site
	(CORS) Access-Control-Allow-Origin: *
wildcard in the header allows public access using Get/resource/private-info

Content injections could result in cross-site scripting or injection of other malicious content in the application.
Script injection in an application could endanger users and cause reputational damage.


---

Local Storage
Also known as web storage, allows an application to store key/value pairs at the client side. 

	localStorage.setItem("user", user);

Persistent storage that survives system and browser restarts and a session storage that exists only until the window or tab is closed.

Vulnerabilities occur when an application explicitly makes use of local storage to store data. 

FIX:
Since the local storage is always accessible by JavaScript and there is no way to restrict the path, developers should simply avoid using it when storing sensitive information.

Where it must be user, apply application-wide filters or sanitization on assignments from local storage.

---

![ImproperMemoryManagement.png](SecurityImages/ImproperMemoryManagement.png)
