## Secure Access

When getting the list of players, the application is not enforcing any kind of access control. Therefore, an adversary can gain access to some extra users' information. SUch information may help an attacker to compromise the application.

It is recommended to implement access control measures in order to ensure that only authorized users can make use of the application funtionality. The getPlayers method has been annotated with @RolesAllowed(ADMIN), which restricts access to any user, except the administrator. Applying this approach, the application filters all unprivileged users from gaining access to the current method.

The application does not verify user role to access the file. As the role-based access mechanism does not work corectly, an attacker may get the data with minimal effort. The file may contain valuable information that might compromise the system.

It's recommended to implement access control mechanisms when accessing individual objects like files. The application has used the annotation RolesAllowed(ADMIN) in order to restrict the access to only the admin user. In this way, unauthorized access to files will be prevented.

Category: Insecure Authorisation

WHAT: Users bypass authorisation measurements in the system.
HOW: Hackers  modify the input value: manipulate user ID parameters in URL


	1. Ensure back-end API uses proper access control to relevant end-points
Test user authorization

SOLUTION:
	- Protect all business functions
		○ Role based authorization mechanism - server side implementation
	- Apply authorization using centralised routines
		○ Provided by framework of external modules
	- Deny access by default - least privilege
	- Implement access on server, no client.

EXAMPLE:

Tab may be hidden in the website (e.g. verifying input against hidden Users page) but the tab name is apparent in the html. Entering this name in the url helps unauthorized users access the hidden page.