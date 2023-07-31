# Distributed Web Infrastructure

## Description

Web stack with load balancer. Reduces traffic to primary server by distributing the load to a secondary server (replica). 

## Specifics About This Infrastructure

+ The distribution algorithm the load balancer is configured with and how it works.<br/>*Round Robin* distribution algorithm uses each server behind the load balancer in turns, according to their assigned weights.

+ The setup enabled by the load-balancer.<br/>*Active-Passive* as contrasted to *Active-Active* setup. *Active-Active* setup - load balancer distributes workloads across all available nodes, prevents any single node from getting overloaded. This means improvement in throughput and response times. *Active-Passive* setup, not all nodes are going to be active (capable of receiving workloads at all times). In the case of two nodes, for example, if the first node is already active, the second node must be passive or on standby. The second or the next passive node can become an active node if the preceding node is inactive.
+ How a database *Primary-Replica* (*Master-Slave*) cluster works.<br/>A *Primary-Replica* setup configures one server to act as the *Primary* server and the other server to act as a *Replica* of the *Primary* server. However, the *Primary* server is capable of performing read/write requests whilst the *Replica* server is only capable of performing read requests. Data is synchronized between the *Primary* and *Replica* servers whenever the *Primary* server executes a write operation.
+ The difference between the *Primary* node and the *Replica* node in regard to the application.<br/>The *Primary* node is responsible for all the write operations the site needs whilst the *Replica* node is capable of processing read operations, which decreases the read traffic to the *Primary* node.

## Issues With This Infrastructure

+ There are multiple SPOF (Single Point Of Failure).<br/>For example, if the Primary MySQL database server is down, the entire site would be unable to make changes to the site (including adding or removing users). The server containing the load balancer and the application server connecting to the primary database server are also SPOFs.
+ Security issues.<br/>The data transmitted over the network isn't encrypted using an SSL certificate so hackers can spy on the network. There is no way of blocking unauthorized IPs since there's no firewall installed on any server.
+ No monitoring.<br/>We have no way of knowing the status of each server since they're not being monitored.
