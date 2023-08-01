# Secured and Monitored Web Infrastructure

## Description

Load balanced web stack with security, telemetry, and encryption.

## Specifics About This Infrastructure

+ The purpose of the firewalls.<br/>Block unauthorized users. As an intermediate layer between the internal and the external networks, it blocks the incoming traffic that is unwanted. 

+ The purpose of the SSL certificate.<br/>It encrypts traffic between the server and the external network. It is a mitigation for man-in-the-middle attacks (MITM) and network sniffing. This maintains confidentiality and integrity of information.

+ The purpose of the monitoring clients.<br/>They provide data for analysis of the server performance and operations. Provide alerts as regards reliability of the stack and any exceptions that should not be past set thresholds. Automated `tests on some of these thresholds include: accessibility, response time, tripwires for unauthroized additions, corrupt files, vulnerabilities.

## Issues With This Infrastructure

+ A single database server still leaves the site open to failure and therefore act as a single point of failure.

+ Servers sharing the same components means there would be contention for resources (CPU, Memory, disk I/O) on the server. This means there is a great possiblity for degraded performance. Finding the root cause of this problem would also be difficult.
