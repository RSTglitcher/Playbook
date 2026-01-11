---
title: "ConfigMaps"
sidebar_position: 1
---

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';


- What are ConfigMaps?
- Conceptually, are they scala or are they GCP specific?

<Tabs>
<TabItem value="objects" label="K Tools">

**ConfigMaps**

- A built-in Kubernetes API object that stores your application's non-sensitive key-value config data.
- Allows you to keep config values separate from your code and container images.
- String or Base64-encoded binary.

1. Create ConfigMap
2. Content is saved to your Kubernetes cluster
3. Pods then consume the values as environment variables, command line arguments, or filesystem volumes.




</TabItem>
</Tabs>