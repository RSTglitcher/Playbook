### MAVEN Introduction

A powerful project management tool. Used to project build, dependency and documentation

Log4J - KNOWN VULNERABLE COMPONENTS
 Records either events that occur in an operating system 
OR other software runs
OR messages between different users of a communication software


    //DEFINITION
    When an application uses third-party libraries, frameworks, components or other software known to have vulnerabilities.
    
    //CAUSE
    This vulnerability occurs because usually, low priority is given to ensure that used libraries and components are up to date.
    Dependencies can further complicate the effort of using the most secure components.
    
    //POTENTIAL RISK
    Components with known vulnerabilities can cause almost any type of risk; from the most harmless to complete host takeover:
    keep in mind that components usually run with the (full) privilege of the application.
    
    //PREVENTION
    Implement a process to manage the security of third-party software: identify components, check them regularly against
    vulnerability lists and update when needed. Implement security policies governing component use.
    Restrict the user of unused or insecure component functionalities.


SQL INJECTION - Given the range of possible vulnerabilities the potential impacts can be dramatic.


    A SQL injection could result in theft of user accounts and other sensitive data, resulting in privacy violation and reputation damage.
    
    A remote code execution vulnerability could lead to host takeover and make your site unreachable, resulting in reputation damage and revenue loss.
    
    Implement a process to manage the security of third party software including idenitfying third party components, their versions and dependencies.
    Check them regularly against vulnerability lists and update them when needed.
    
    Subscribe to cyber-security related mailing lists from Information Security (InfoSec) sites and software vendors.
    
    Implement security policies governing components use, to define, evaluate and ensure safety of components.
    Restrict the use of unused, insecure or unsafe component functionalities.


URL ENCODING


    At its most basic, the vulnerability is due to a lack of consideration for URLs with URL encoding.
    
    The newly introduced path normalization function did not fully handle cases where dots were URL encoded.
    Remember that to conduct a path traversal attack, you will need to traverse with the sequence ../ .
    But the normalization function is smart enought to strip that out. What do you then do?
    
    You can URL encode a . (Dot) down to %2e , and use a sequence like .%2e/ .
    That would work in many cases against Apache 2.4.48. But you can go one step further and double encode it.
    The URL encoded version of .%2e/ is /%252e/ .This was further able to bypass the attempted normalization by Apache.
    
    If someone wanted to try exploit this vulnerability straight in their browser, they would not be successful.
    This is due to the fact that browsers also try to normalize URLs that are sent to servers.
    This means that even our double-encoded sequence will be removed.
    This  means that we can't simply use a browser to demonstrate this.
    
You can use cURL to demonstrate this by using the --path-as-is flag which prevents it from normalizing the URL before sending it.
- curl --path-as-is http://127.0.0.1/.%252e/conf/httpd/conf

Payload
- /.%252e/.%252e/.%252e/.%252e/etc/passwd
    
    The vulnerability was introduced in the 2.4.49 release due to a change to the URL normalization function,
    where a new path normalization function was introduced.
    
- Unfortunately, it failed to correctly normalize URL encoded paths. This makes it possible to conduct a path traversal attack if the following configuration is not present:
- Deny access to the entirety of your server's filesystem. You must explicity permit access to web content directories in other blocks below.
    
    AllowOverride none
    Require all denied
    
    
Furthermore, in order for the path normalization to take place, the path needs to match an Alias in the configuration.
Here's an example of a default path that exists in teh Apache configuration for the /cgi-bin/ folder:

- ScriptAlias /cgi-bin/"/usr/local/apache2/cgi-bin/"
    
If mod_cgi is enabled, the vulnerability can also be leveraged into a Remote Code Execution vulnerability.
    
It is recommended to check the security reports for the libraries used in the application in order to ensure no vulnerability are introduced.
The XStream library was replaced by Jackson.
This will prevent the application from being vulnerable to RCE attacks as it happened with the previous library.