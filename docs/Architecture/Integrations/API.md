---
title: "Web APIs"
---
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';


<Tabs>
<TabItem value="rest" label="REST">

Representational State Transfer

Interactions are stateless --> Every REST call is independent and can have a global effect

This covers basic properties of interactions, but developers using an API must gain a significant amount of domain knowledge to build applications or pull data effectively. 


</TabItem>
<TabItem value="graphql" label="GraphQL">

Query language for application data. This is an alternative to generic REST APIs.

These can retrieve multiple data models in a single request.
- Built around JSON
- Returns data in a shape resembling the JSON Query

REST API uses versioning while GraphQL tags assets as @deprecate if they are no longer in use.


</TabItem>
<TabItem value="graphQL" label="GraphQL">

This is an alternative to REST APIs.

A user can send a single request with multiple queries. The response is returned in JSON format.

</TabItem>
</Tabs>
