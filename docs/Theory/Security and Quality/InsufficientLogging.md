---
title: "Insufficient Logging & Monitoring"
---


The Importance of Logs and Monitoring
What to Log and How to Monitor
Security logs, monitoring critical events
Detection and Response
Real-time anomaly detection and automated alerting

Insufficient or incomplete logging information in microservices applications may be difficult in root cuase analysis in case of a system failure or security breach. An attacker mgith take advantage of insufficient logging in order to carry out undetected malicious activities.

It is recommended to use a meaningful context for each log message. The application encapsulates type, spot, and UUID in a single structured frame. In this way, a log entry will contain enough information for auditing purposes.

Applications must correctly track all information about possible suspicious activity at all critical access points. If the application is written in pure Java, it can use the Java library class Logger to collect information and provide protection , with the correct configuration file setting. After configuration, the Logger will save all important information and help to understand which "parts" of the application are attacked most often.

PROBLEM CODE
Logger.info("Username: " + username + ", CCN: " + ccn);

locationClient = new Locationclient(this,this,this);
locationClient.connect();
currentUser.setLocation(locationClient.getLastLocation());

…

```java
Catch (Exception e) {
AlertDialog.Builder builder = new AlertDialog.Builder(this);
Builder.setMessage("Sorry, this application has experienced an error.");
AlertDialog alert = builder.create();
Alert.show();
Log.e("ExampleActivity", "Caught exception: " + e |While on User: " + User.toString());
}
```


User

Web App

Failed login attempts

Event --> Log
