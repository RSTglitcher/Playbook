---
title: "PubSub"
---

- Kafka
- PubSub

## Kafka

Q. What isit?
Q. What does it do?

A Kafka lag can occur if the consumers cannot keep up with the rate of ingestion.
This results in a delay that slows overall uprocessing and even time outs that mean older commands are forgotten by the
Kafka tool and therefore never run .

Framework for storing, reading and analysing streaming data.

"Distributed" environment - runs across several servers, leveraging additional processing power and storage capacity.

Real-time insights

How does it work?
Apache takes information which can be read from a huge number of data sources and organises it into "topics".
E.g. transactional log for a grocery store.

Data in --> (Kafka)  --> Create topics (e.g. # apples sold) --> Insight summary

Interface between applications and topics
API = Producer ( i.e. Kafka Topic log - Kafka's database of ordered, segmented data).
API = Consumer (i.e. topic logs can be read and info passed onto other applications).

Combined with Big data analytics framework, Kafka works by forming the "central nervous system" that the data passes through input and capture applications, data processing engines and storage lakes.
