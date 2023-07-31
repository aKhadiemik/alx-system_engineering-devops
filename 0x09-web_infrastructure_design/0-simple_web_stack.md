# Simple Web Stack

## Description

Simple web stack hosting website reachable via www.foobar.com. Network has no protection - (firewalls/SSL). DB, App Server, web server hosted on shared hardware (CPU, SSD, RAM).

## Specifics About This Infrastructure

+ What a server is.<br/>hardware or software that provides services to client computers or end users

+ The role of the domain name.<br/>provides an easily accessible name for an IP Address. The Domain Name System (DNS) translates the hostname to the IP address.

+ The type of DNS record `www` is in `www.foobar.com`.<br/>`Authoritative or **A record**. 

+ The role of the web server.<br/>The web server is a software/hardware that accepts requests via HTTP or secure HTTP (HTTPS) and responds with the content of the requested resource or an error messsage.

+ The role of the application server.<br/>To install, operate and host applications and associated services for end users, IT services and organizations and facilitates the hosting and delivery of high-end consumer or business applications

+ The role of the database.<br/>To maintain a collection of organized information that can easily be accessed, managed and updated

+ What the server uses to communicate with the client (computer of the user requesting the website).<br/>Communication between the client and the server occurs over the internet network through the TCP/IP protocol suite.

## Issues With This Infrastructure

+ There are multiple SPOF (Single Point Of Failure) in this infrastructure.<br/>For example, if the MySQL database server is down, the entire site would be down.

+ Downtime when maintenance needed.<br/>When we need to run some maintenance checks on any component, they have to be put down or the server has to be turned off. Since there's only one server, the website would be experiencing a downtime.

+ Cannot scale if there's too much incoming traffic.<br/>It would be hard to scale this infrastructure becauses one server contains the required components. The server can quickly run out of resources or slow down when it starts receiving a lot of requests.
