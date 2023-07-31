# Secured and Monitored Web Infrastructure

## Description

Load balanced web stack with security, telemetry, and encryption.

## Specifics About This Infrastructure

+ The purpose of the firewalls.<br/>Block unauthorized users. As an intermediate layer between the internal and the external networks, it blocks the incoming traffic that is unwanted. 

+ The purpose of the SSL certificate.<br/>It encrypts traffic between the server and the external network. It is a mitigation for man-in-the-middle attacks (MITM) and network sniffing. This maintains confidentiality and integrity of information.

+ The purpose of the monitoring clients.<br/>They provide data for analysis of the server performance and operations. Provide alerts as regards reliability of the stack and any exceptions that should not be past set thresholds. Automated `tests on some of these thresholds include: accessibility, response time, tripwires for unauthroized additions, corrupt files, vulnerabilities.

## Issues With This Infrastructure

+ Terminating SSL at the load balancer level would leave the traffic between the load balancer and the web servers unencrypted.
+ Having one MySQL server is an issue because it is not scalable and can act as a single point of failure for the web infrastructure.
+ Having servers with all the same components would make the components contend for resources on the server like CPU, Memory, I/O, etc., which can lead to poor performance and also make it difficult to locate the source of the problem. A setup such as this is not easily scalable. 
