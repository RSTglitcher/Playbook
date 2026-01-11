---
title: "Attack Methods"
sidebar_position: 2
---

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="path" label="Path Traversal">

### Path Traversal / Directory Traversal / Climbing/ Backtracking/ ..l

To access files or directories stored in the file system of a web server or application, outside of the web root folder.

HOW?
Manipulate the URL path input to the web app using ../ sequences, double URL encoding or direct file paths.


Most have protection, but can still be breached with variations of ../

PREVENTION

	- Test for path traversal vulnerabilities
	- Work without user input when using file system calls
	- Use indexes instead of parts of file names when templating or using language files
	- Be sure that users are unable to supply all parts of the path
	- Use chrooted jails and code access policies to restrict unintended access and modification files
	- When user input must be submitted for file operations, normalise the input before using in-file IO APIs

This bug is not limited to Python's tarfile module. Other vulnerable functionality is the ZipFile.extract, Zipfile.extractall, and shutil.unpack_archive.
If untrusted user input cannot be avoided when extracting tar or zip files, make sure to at least sanitize it. Don't forget that path traversal is not limited to dot-dot-slash attacks.
Checking for dodgy characters, such as ../ is not sufficient! Path traversal is also possible with absolute paths, and a variety of this bug also exists with symlinks.
Preferably, sanitize the file names by limiting the allowed characters as much as possible.

</TabItem>
<TabItem value="source" label="Untrusted Sources">

	Examples
	- Roles in cookies
	- Input Parameters
	- Query Results
	- Sections of a URL
	- Etc.

Hacker can modify user role as assigned in Cookie

SOLUTION
	- Review areas where untrusted input could enter the application
	- Use a trusted framework
Avoid relying on user input in authentication process

</TabItem>
<TabItem value="redirects" label="Unvalidated Redirects">

	- Cause by using unvalidated user input

Hacker sends a link that looks like a valid site but redirects the user to a false site that collects information entered.

	- Avoid redirects & forwards unless absolutely necessary.
	- Don't use user parameters as the destination
	- Validate the supplied value and ensure it is authorised for users
Use mapping values rather than actual URLs

</TabItem>
<TabItem value="plaintext" label="Plain Text Storage">

Sensitive data exposed to users not intended to see that data.

CAUSE
	- Application does not adequately protect data

PROBLEM
	- Unsalted/unencrypted 

SOLUTION
	- Encrypt data during transport and at rest using latest encryption algorithms
	- Encrypt all data in transit with secure protocols such as TLS
	- Don't store sensitive data unnecessarily
	- Use strong hashing/encryption algorithms
	- Use a hashing algorithm i.e. salt and pepper
For data that doesn't need to be hashed, use symmetric encryption.

</TabItem>
<TabItem value="weakalgorithms" label="Weak Algorithm Usage">

# Insecure Cryptographic Storage Vulnerability
	- Malicious Hacker - Internal Personal Data is accessed due to a lack of crypto schemes to protect the data.
	- External Hacker - Uses other vulnerabilities to access the database: SQL Injections, XML Injections, Brute Force.

# Prevention
	- ID sensitive data which needs protection
	- Ensure appropriate strong standard algorithm and strong keys are in place
	- Application wide key management shoul dbein place
	- Ensure passwords are hashed with strong standard algorithms including an appropriate salt.
	- All keys and passwords should be protected from unauthorised access.

Username | Hashed Password | Rainbow table for Unhashed Password |


Setting the Bcrypt password hasher algorithm (BCryptSHA256PasswordHasher but modifying the algorithm to produce unsalted 
SHA1 hashers does not mitigate the vulnerability. An adversary could brute-force the unsalted SHA1 algorithm to get users' passwords.

Setting the Argon2 password hasher algorithm (Argon2PasswordHasher) but modifying the algorithm to produce unsalted MD5 
hashers does not mitigate the vulnerability. An adversary could brute-force the unsalted MD5 algorithm to get users' passwords.

In order to mitigate weak algorithm vulnerability, the password hasher (PASSWORD_HASHER) must be periodically refreshed 
with recommended algorithms, in this case, ideally, Argon2 or Bcrypt.

</TabItem>
</Tabs>

