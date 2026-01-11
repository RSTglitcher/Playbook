---
title: "Web Development"
sidebar_position: 4
---

## HTTP Responses

| Status Code | Meaning                                                                                           |
|-------------|---------------------------------------------------------------------------------------------------|
| 1xx         | Informational - Continue / Switching Protocols / Processing                                       |
| 2xx         | Success - OK / Created / Accepted / No Content / Multi-Status / Resent Content/ etc.              |
| 3xx         | Redirection - Multiple Choices/ Moved Permanently / Found / Use Proxy / See Other / etc.          |
| 4xx         | Client Error - Bad Request / Unauthorized / Not Found / Forbidden / Payment Required / etc.       |
| 5xx         | Server Error - Internal Server Error / Not Implemented / Bad Gateway / Service Unavailable / etc. |


COLLECTIONS - a series of saved Postman requests
Collection
- Basic Positive tests
- GET - retrieves data from URL
- POST - pushes information to URL
- PUT - updates information for an existing request to the URL/itemtobeupdated
- DELETE - deletes information from the URL/itemtobeupdated
- Basic Negative tests
- GET - Record not found
- POST - Request is sent with missing information
- PUT - Value has too many characters
- PUT - Value has invalid characters
- PUT - Value is not in the correct format

	URL (End-point) stays the same
	Body: When you are POSTing information to the endpoint

--------------------
VARIABLE (instead of hard coded values)

WHEN YOU KNOW THE VARAIBLE
- Environment: Group of variables
    - Settings wheel (manage environments) *Add
      - Name Environment *Add
      - click on environment
      - Variable Table (Initial Value: Saved to environment; Current Value: Temporarily change variable)
      Body -- "firstName": "firstName", curly braces tells Postman to use the variable name saved in the environment

WHEN YOU DON'T KNOW THE VARAIBLE
Collection
- Tests (Write JavaScript commands)
- Set an environment variable
e.g. var jsonData = pm.response.json();
pm.environment.set("contactId", "jsonData._id";

--------------------
TESTS Tab
- Pick Java snippet on right

- BODY assertions
    - Response body: Contains string

--------------------
1. Headers - API Headers are where extra information can be gathered where needed. POL expects payment in this structure.

2. Body - This INPUT is either picked up if specified in the code or can be pasted directly.

3. Get/Post - Get(Retrieve) data from an API or Post (Send) data to an API

4. Run
    - Locally:

    - Server:
--------------------
	STARTER STEPS

    1. Translation API - Confluence link

    	a. Download the json collection

    	b. Copy the SIT url

    2. Postman

    	a. File  Import  Import File

    	b. Paste the URL

    	c. File  Settings  General - ensure SSL is OFF

    	d. Headers - look at the Confluence page if unsure

    	e. Body - paste the input message that you want translated and check the file type is correct

    	f. Sample 17, 18, 19

    	g. Send

    3. Testing

    	a. Check each mapping, check the first one carefully, then can use Notepad++ to spot differences quicker.

    	b. Check where there are different variations e.g.57A/B/C/D

    	c. Arati's mapping should be the priority.