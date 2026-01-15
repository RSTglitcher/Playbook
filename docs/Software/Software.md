---
title: "Software Engineering"
---

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

## Principles

<Tabs>
<TabItem value="solid" label="SOLID">

**Single Responsibility Principle (SRP)**  
A class should have only one reason to change. Each class should handle a single responsibility.

**Open/Closed Principle (OCP)**  
Software entities should be open for extension but closed for modification.

**Liskov Substitution Principle (LSP)**  
Subtypes must be substitutable for their base types. Child classes should honor the contract of their parent classes.

**Interface Segregation Principle (ISP)**  
Interfaces should be small and specific. Clients should not be forced to depend on methods they do not use.

**Dependency Inversion Principle (DIP)**  
Depend on abstractions, not concrete implementations.

</TabItem>
<TabItem value="dry" label="DRY">

**Don't Repeat Yourself (DRY)**  
Avoid duplicating code; abstract repeated logic into reusable functions or modules.

</TabItem>
<TabItem value="kiss" label="KISS">

**Keep It Simple, Stupid (KISS)**  
Design systems in the simplest way possible; avoid unnecessary complexity.

</TabItem>
<TabItem value="4-pillars" label="4 pillars of OOP">

These are fundamental principles that form the foundation of OOP and guide how to design and structure software systems.

## 1. Inheritance
Child/Sub Class EXTENDS Parent/Super Class. Reuse methods while following the hierarchy.

## 2. Encapsulation
Group data and behavior into logical components; hide implementation using private attributes + getters/setters.

## 3. Abstraction
Expose only essential attributes; hide unnecessary details. Use abstract classes and interfaces.

## 4. Polymorphism
Methods can have multiple forms; allows runtime flexibility. Child classes override parent methods.

</TabItem>
<TabItem value="eq-4-pillars" label="4 pillars in FP">

## 1. Function Composition
Combine simple, reusable functions into larger functionality.

## 2. Immutability
Encapsulate data in immutable form to prevent accidental modification.

## 3. Pure Functions
Consistent results, no side effects. Enhances testability and predictability.

## 4. Higher-Order Functions
Functions as first-class citizens; can accept or return other functions.

**Additional FP Concepts**
- Lazy evaluation
- Referential transparency

</TabItem>
</Tabs>

---

## OS Architecture Taxonomy


```mermaid
OSArchitecture
├── User Space
│   ├── Terminal / CLI
│   ├── GUI
│   └── Applications
│
├── Kernel Space
│   ├── Process Management
│   ├── Memory Management
│   ├── File System Management
│   ├── Device Drivers
│   └── Network Stack
│
└── Hardware
    ├── CPU
    ├── RAM
    ├── Storage (HDD/SSD)
    └── Network Interface Card (NIC)
```

## Project Taxonomy

```mermaid
ProjectArchitecture
├── Source Code
│   ├── Modules / Packages
│   ├── Functions / Classes
│   └── Config Files
│
├── Version Control
│   ├── Git
│   ├── Branching Strategies
│   └── Pull Requests / Code Reviews
│
├── Build & Dependency Management
│   ├── Build Tools (Maven, Gradle, Make)
│   ├── Package Managers (npm, pip)
│   └── Dependency Tracking
│
├── Testing
│   ├── Unit Tests
│   ├── Integration Tests
│   ├── End-to-End Tests
│   └── Test Coverage / Quality Metrics
│
├── Deployment
│   ├── CI/CD Pipelines
│   ├── Containers (Docker)
│   ├── Orchestration (Kubernetes)
│   └── Cloud / On-Prem Environments
│
└── Monitoring & Maintenance
├── Logging
├── Metrics / Alerts
├── Health Checks
└── Debugging Tools
```