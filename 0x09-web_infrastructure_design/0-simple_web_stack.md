# Simple Web Stack

## Description

Simple web stack hosting website reachable via www.foobar.com. Network has no protection - (firewalls/SSL). DB, App Server, web server hosted on shared hardware (CPU, SSD, RAM).

## Specifics About This Infrastructure

+ What a server is.<br/>hardware or software that provides services to client computers or end users

+ The role of the domain name.<br/>provides an easily accessible name for an IP Address. The Domain Name System (DNS) translates the hostname to the IP address.

+ The type of DNS record `www` is in `www.foobar.com`.<br/>`Authoritative or **A record**. 

+ The role of the web server.<br/>It is a component (software or hardware) that accepts requests and responds with the content of the requested resource or an error message through HTTP or HTTPS.

+ The role of the application server.<br/>Applications are installed, operated and hosted here. Hosted services can then be accessed by end users from this location since it is specialized for the delivery end consumer or business applications

+ The role of the database.<br/>To maintain a collection of organized information that can easily be accessed, managed and updated

+ What the server uses to communicate with the client computer<br/>Exchanges between client and server are made over the internet through TCP/IP.

## Issues With This Infrastructure

+ There are multiple SPOF (Single Point Of Failure) in this infrastructure.<br/>If the the database server becomes inaccessible to the app server or there is a misconfiguration in the case of the web server, the applicaiton becomes inaccessible to end users. 

+ Might not have the ability to handle surges in incoming traffic.<br/>Scaling this web stack might hit insurmountable limits when the RAM, disk capacity and processing resources are considered.
