---
title: Writing Guide
sidebar_position: 1
---

Keep the site as simple as possible. The content is the most valuable part here for learning on the fly so do not waste 
time with overly complicated React components unless there is a real visual benefit in the end result.


## Front Matter

```text title="my-doc.md"
// highlight-start
---
id: my-doc-id
title: My document title
description: My document description
slug: /my-custom-url
---
// highlight-end

## Markdown heading

Markdown text with [links](./hello.md)
```
## Images

Regular Markdown images are supported.

You can use absolute paths to reference images in the static directory (`static/img/docusaurus.png`):

![Docusaurus logo](/img/docusaurus.png)

You can reference images relative to the current file as well. This is particularly useful to colocate images close to the Markdown files using them:

```md
![Docusaurus logo](./img/docusaurus.png)
```

## Code Blocks

Markdown code blocks are supported with Syntax highlighting.

````md
```jsx title="src/components/HelloDocusaurus.js"
function HelloDocusaurus() {
  return <h1>Hello, Docusaurus!</h1>;
}
```
````

```jsx title="src/components/HelloDocusaurus.js"
function HelloDocusaurus() {
  return <h1>Hello, Docusaurus!</h1>;
}
```

## Admonitions

Docusaurus has a special syntax to create admonitions and callouts:

```md
:::tip My tip

Use this awesome feature option

:::

:::danger Take care

This action is dangerous

:::
```

:::tip My tip

Use this awesome feature option

:::

:::danger Take care

This action is dangerous

:::

## MDX and React Components

[MDX](https://mdxjs.com/) can make your documentation more **interactive** and allows using any **React components inside Markdown**:

```jsx
export const Highlight = ({children, color}) => (
  <span
    style={{
      backgroundColor: color,
      borderRadius: '20px',
      color: '#fff',
      padding: '10px',
      cursor: 'pointer',
    }}
    onClick={() => {
      alert(`You clicked the color ${color} with label ${children}`)
    }}>
    {children}
  </span>
);

This is <Highlight color="#25c2a0">Docusaurus green</Highlight> !

This is <Highlight color="#1877F2">Facebook blue</Highlight> !
```

export const Highlight = ({children, color}) => (
<span
style={{
backgroundColor: color,
borderRadius: '20px',
color: '#fff',
padding: '10px',
cursor: 'pointer',
}}
onClick={() => {
alert(`You clicked the color ${color} with label ${children}`);
}}>
{children}
</span>
);

This is <Highlight color="#25c2a0">Docusaurus green</Highlight> !

This is <Highlight color="#1877F2">Facebook blue</Highlight> !

---

```mermaid
├── Runbook
│ ├── _category_.json
│ ├── AWS.mdx
│ ├── Cassandra.mdx
│ ├── CLI.mdx
│ ├── DBT.mdx
│ ├── GCP.mdx
│ ├── Git.mdx
│ ├── Grafana.mdx
│ ├── Jenkins.mdx
│ ├── K9s.mdx
│ ├── Kafka.mdx
│ ├── OpenAPI.mdx
│ ├── Prometheus.mdx
│ ├── Regex.mdx
│ ├── RelationalDB.mdx
│ ├── Runbook.mdx
│ └── Vault.mdx
├── Technical_Analyst
│ ├── _category_.json
│ ├── Conditionals.mdx
│ ├── DataStructuresAlgorithms.mdx
│ ├── DEHistory.png
│ ├── DesignPatterns.mdx
│ ├── MemoryMgt.mdx
│ ├── OS Architecture.mdx
│ ├── Principles.mdx
│ ├── Product.mdx
│ ├── Project Architecture.mdx
│ ├── Technical_Analyst.mdx
│ └── Template.mdx
└── Theory
    ├── _category_.json
    ├── Communication
    │ ├── _category_.json
    │ ├── API.mdx
    │ ├── APIContracts.mdx
    │ ├── Communication.mdx
    │ ├── Messaging.mdx
    │ └── Protocols.mdx
    ├── Container Orchestration
    │ ├── _category_.json
    │ └── Container Orchestration.mdx
    ├── Dependency and Package Management
    │ ├── _category_.json
    │ └── Dependency and Package Management.mdx
    ├── Deployment Practices
    │ ├── _category_.json
    │ ├── Building_Testing_Deploying.md
    │ ├── CICD.md
    │ └── Git.mdx
    ├── DevOps and Infrastructure
    │ ├── _category_.json
    │ ├── DevOps and Infrastructure.mdx
    │ ├── Monitoring.mdx
    │ └── TracingTelemetry.md
    ├── FileTypes
    │ ├── _category_.json
    │ ├── Configuration and Infrastructure Files
    │ │ └── Configurations.mdx
    │ ├── Data and Analytics Files
    │ ├── Documentation and Markup Files
    │ ├── FileTypes.mdx
    │ ├── Programming and Schema Definition
    │ └── Serialisation and Messaging Formats
    │     ├── DataRepresentation.mdx
    │     └── MessageRepresentation.mdx
    ├── Performance and Scalability
    │ ├── _category_.json
    │ └── Performance and Scalability.mdx
    ├── Quality
    │ └── Quality.mdx
    ├── Security and Quality
    │ ├── _category_.json
    │ ├── AdvancedAttacks.md
    │ ├── AttackMethods.md
    │ ├── Attacks.md
    │ ├── AuthenticationSessionMgt.md
    │ ├── Compliance.md 
    │ ├── InjectionAttacks.md
    │ ├── InsecureDataStorage.md
    │ ├── InsufficientLogging.md
    │ ├── OWASP.md
    │ ├── SecureAccess.md
    │ ├── SecureArchitecture.md
    │ ├── Security and Quality.md
    │ ├── SecurityImages
    │ │ ├── Certificates.png
    │ │ ├── DeprecatedAlgorithm.png
    │ │ ├── Deserialisation.png
    │ │ ├── ImproperMemoryManagement.png
    │ │ ├── ImproperTimeout.png
    │ │ ├── JavaScriptInjection.png
    │ │ ├── ReinitialisationVector.png
    │ │ ├── SQLInjection.png
    │ │ ├── UntrustedSources.png
    │ │ └── XXE.png
    │ ├── SecurityMisconfigurations.md
    │ ├── SensitiveDataExposure.md
    │ ├── TestSecurity.md
    │ └── XSS_CSRF.md
    ├── Storage
    │ ├── _category_.json
    │ ├── Analytics and Warehousing
    │ │ ├── Analytics and Warehousing.mdx
    │ │ ├── Cloud Warehouses.mdx
    │ │ ├── Data Lakes.mdx
    │ │ ├── Data Warehouses.mdx
    │ │ └── Lakehouse Architecture.mdx
    │ ├── Application Storage
    │ │ ├── Application Storage.mdx
    │ │ ├── ContainerisedEnvironments.mdx
    │ │ ├── Databases.mdx
    │ │ ├── File and Object Storage.mdx
    │ │ └── Performance-Oriented Storage.mdx
    │ ├── Cross-Cutting Storage Capabilities
    │ │ └── Cross-Cutting Storage Capabilities.mdx
    │ └── Storage.mdx
    └── Theory.mdx

```