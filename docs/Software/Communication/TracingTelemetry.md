---
title: "Tracing & Telemetry"
---

- Prometheus
- Jaeger
- Zipkin
- Open Telemetry


---
title: "Alerting"
---

Application Monitoring (e.g., Prometheus, Grafana, ELK Stack)
Infrastructure Monitoring (e.g., Nagios, Zabbix)
Logging & Metrics (e.g., logging best practices, setting up metrics)

## Prometheus

Timeseries
- Querying
- Analysis

Metrics & System Health

- Monitoring Infrastructure
- Services
- Applications

## Grafana

Visualisation & Analytics - multiple data sources: Track & Understand system behaviour

- Different data types
- Time-series metrics
- Logs
- Structured Information

### Tools

<details>
<summary>Prometheus</summary>

#### [Prometheus](https://prometheus.io/)

An open-source monitoring and alerting toolkit designed for reliability and scalability in modern, cloud-native environments.
It is a useful tool to collect, store, and query time-series data to represent platform performance, application health, and infrastructure.

- Real-Time Monitoring
- Flexibility for Customised Monitoring
- Integration with other tools in the Cloud-Native Ecosystem
- Community & Ecosystem: Open-source Community & diverse range of exporters, integrations, and extensions

**Use Prometheus to collect data on:**

1. System behaviour & performance
    - Instrumentation
    - Scalability (Monitoring large & distributed systems)
    - PromQL - query & aggregate metrics for custom alerts & dashboards
2. Target Specific metrics:
    - Time-series based
    - Alerting: Rule triggers metric thresholds & conditions

#### Prometheus Alert Manager

[Prometheus Alert Manager](https://prometheus.io/docs/alerting/latest/alertmanager/) is an open-source alerting and notification management tool.
It acts as an intermediary between alert-generating systems and notification channels (e.g. Slack). This tool ensure alerts are routed, deduplicated and
sent to the appropriate recipients based on predefined rules and configurations.


#### Prometheus Push Gateway

[Prometheus Push Gateway](https://prometheus.io/docs/practices/pushing/) serves as a bridge between ephemeral and batch jobs/services that cannot be directly scraped.
It allows short-lived tasks to use HTTP Post push their metrics to Prometheus for data monitoring.

- Job or Service Short-Lived Nature
- Batch Job Monitoring
- Ephemeral/ Dynamic Targets
- Decoupling Metrics Collection
- Testing & Development

</details>

<details>
<summary>Grafana</summary>

#### [Grafana](https://grafana.com/products/cloud/?src=ggl-s&mdm=cpc&camp=b-grafana-exac-emea&cnt=118483912276&trm=grafana&device=c&gclid=CjwKCAjw3oqoBhAjEiwA_UaLti00SaSIPaWFsEY1FFSUPn_MBfG4N9pEyfFaYVPp7T3ZSk82F-uheRoCuBAQAvD_BwE)

An open-source platform for monitoring and observability that specializes in data visualisation and dashboarding. Given it can connect to a variety of data sources including time-series databases, it is commonly paired with Prometheus
to visually represent the data collected.

- Insightful charts
- Graphs
- Alerts

**Use Grafana to observe:**
1. Current Statuses
    - Use dashboards/graphs/tables/gauges/heatmaps to represent Prometheus data (Metrics / Logs / Events)
2. Data Behaviour
    - Detailed behaviour over time. Perform comparative analysis. - What would we like to compare?
3. Changing data/requirements
    - Templating for GUI boards?

- Review Grafana Dashboards
    - Dashboard Name + Desc
    - Specific Application / System /Service Monitored
    - Data Sources
    - Filters/Variables
- Visual Guide
    - Screenshots for usage
    - Walkthrough video
    - What features are associated with an alert?

</details>

<details>
<summary>Kiali</summary>

#### Kiali

An open-source graphical user interface (GUI) and service mesh observability tool and management platform designed specifically for microservices-based applications
running in Kubernetes or OpenShift environments.

It provides insights, visualization, and control over the complex interactions and dependencies between microservices, making it easier to manage and troubleshoot distributed systems.

</details>



