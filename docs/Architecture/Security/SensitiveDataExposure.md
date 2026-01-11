---
title: "Sensitive Data Exposure"
---

Sensitive Data Exposure
What Constitutes Sensitive Data
Insecure Data Storage and Transmission
Risks and vulnerabilities in data encryption
Secure Data Handling
Encryption standards (AES, TLS)
Secure key management practices

---

Database 1
Username
Password

User

Web App

Database 2
Credit Card Detail

Sensitive Data Exposure: Plain Text Storage of Passwords / Sensitive Information
Can a hacker expose the Web App Databases to access the sensitive information?
	- No encryption
	- Weak ciphers

Classify your data to decide what is sensitive and what is not.
Apply controls based on classification.
Encrypt data at rest
Possible PFS (Perfect Forward Secrecy) and/or HSTS (HTTP Strict Transport Security)
Do not store the data unless you have to

TLS encryption + Strong ciphers

HTTP encryption

Web Application Firewall


			SENSITIVE DATA STORAGE - Plain text storage of passwords
UserEntity user = new UserEntity(form.get(),form.getPassword().....

When performing user registration, the application is toring thep assword in plain test. An attacker gaining access to the underlying data store will be able to get access to the user's credentials in order to perform further attacks.

Passwords should not be stored in clear text. The application is storing the hash value of the password when performing user registration. In this way, if an attacker is able to get access to the underlying data store, as the hash value is a one-way function, he will not be able to recover the password.

Althought sensitive data is being stored using a strong algorithmn like AES, the provided user input as the encryption key is not properly protected and can be exposed, allowing malicious actors to decrypt the sensitive information.

It is not recommended to store sensitive data in plaintext form. A strong encryption algorithm should be used to protect data at rest. In case of compromise of the datastore, the information will not be exposed if the attackers have no access to the encryption key.

The user's sensitive data - first name and surname - is stored as plain text in the application. It can be read directly if an attacker gains access to the database. Moreover, if hte application develops and other sensitive data is stored in the database, it will only make the situation worse for employees.

Using the AES encryption algorithm together with a 256-but key is the right solution for data encryption. However, the user's login is used as an encryption key. This approach is not secure: the key is stored in the memory of the application in plain text.

Sensitive data should be encrypted. Using the AES encryption algorithm, AES/GCM/NoPadding mode, together with a 256-bit key and the unique initial vectors is the right solution for data encryption. The key for data encryption is loaded in application

---

Trusting Self-Signed or Untrusted Certificates

This vulnerability occurs when a mobile app fails to inspect the certificate offered by the server and instead unconditionally accepts any certificate offered to it. Thus any mutual authentication steps between the mobile app and the endpoint are skipped, so the app is susceptible to man-in-the-middle attacks through an SSL proxy.

The use of self-signed certificates is never acceptable, as they negate the benefit of end-point authentication, and also significantly decrease the ability for an individual to detect a man-in-the-middle attack.

EXAMPLE:
Imagine a scenario where an insecure mobile app accepts all certificates, including self-signed certificates. An attacked created his own server, and intercepts communication to the original server using a man in the middle attack. When the certificate is properly checked the application can detect that this is not the expected server.

However, because the application accepts all certificates the attacker can self-sign the certificate of his fake server and the attack will go undetected. This allows an attacker to receive all communication destined for the original server. The attacker can now steal sensitive information, login credentials, sessions.

To prevent Insecure Communication Vulnerabilities:
	- Developers should write code under the assumption that the network layer is not secure.
	- Also check the code in the app which makes secure calls, and ensure self signed or untrusted certificates are NOT accepted.
	- In code where certificate validation is being configured and enforced, developers should use reliable certificate authorities.
	- Ensure all the data is being transmitted over a secure channel by using HTTPS instead of HTTP. Make sure you're not using a flawed version of TLS.
	- Never write your own protocol. Use industry standards instead.
	- And finally, always use the provided platform libraries for handling Bluetooth and Wireless security.

Accepting all certificates on the client side it's not recommended, the idea of SSL connections is to accept the right certificate so a secure tunnel can be established from the client to the server

![Certificates.png](SecurityImages/Certificates.png)

Weak Certificate Validation
This takes place when a given certificate is not being validated through a strong validation mechanism. This could allow an attacker to fake a given certificate, thus leading an app to believe it actually belongs to a certain party.

As an example, let's say we have an insecure app which connects to an external server. The app is setup to trust all certificates by default.

An attacker successfully fakes a certificate, and leads the app to believe it belongs to a trusted party. Now that the connection is established, the attacked can perform Man In The Middle attacks and gain access to credentials and other sensitive data transmitted over the connection.

To prevent Insecure Communication vulnerabilities:
	- Developers should write code under the assumption that the network layer is not secure.
	- Also check the code in the app which makes secure calls, and ensure self signed or untrusted certificates are NOT accepted.
	- In code where certificate validation is being configured and enforced, developers should use reliable certificate authorities.
	- Ensure all the data is being transmitted over a secure channel by using HTTPS instead of HTTP. Make sure you're not using a flawed version of TLS.
	- Never write your own protocol. Use industry standards instead.
	- And finally, always use the provided platform libraries for handling Bluetooth and Wireless security. 



---



