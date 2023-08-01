# Distributed Web Infrastructure

## Description

Web stack with load balancer. Reduces traffic to primary server by distributing the load to a secondary server (replica). 

## Specifics About This Infrastructure

+ The distribution algorithm the load balancer is configured with and how it works.<br/>*Round Robin* distribution algorithm uses each server behind the load balancer in turns, according to their assigned weights.

+ The setup enabled by the load-balancer.<br/>*Active-Passive* as contrasted to *Active-Active* setup. *Active-Active* setup - load balancer distributes workloads across all available nodes, prevents any single node from getting overloaded. This means improvement in throughput and response times. *Active-Passive* setup, not all nodes are going to be active (capable of receiving workloads at all times). In the case of two nodes, for example, if the first node is already active, the second node must be passive or on standby. The second or the next passive node can become an active node if the preceding node is inactive.
+ How a database *Primary-Replica* (*Master-Slave*) cluster works.<br/>This requires that one server be configured as the *Primary* and the other as a *Replica* of the *Primary* server. The *Primary* server is capable of performing read/write requests. In contrast, the *Replica* server can only perform read requests. Synchronization then occurs between the *Primary* and *Replica* servers whenever the *Primary* server executes a write operation.
+ The difference between the *Primary* node and the *Replica* node in regard to the application.<br/>The *Primary* node conducts all write operations required by the site, the *Replica* node processes read operations reducing the rate o read traffic to the *Primary* node.

## Issues With This Infrastructure

+ Multiple SPOF (Single Point Of Failure).<br/>For example, no write changes can be made to the database (create and update operations) if the Primary database server is inaccessible. Misconfigurations in load balancer and the application server could also mean that the appliation remains unreachable. 

+ Security.<br/>There is no protection for data exchanged by end users and the server, therefore sensitive information can be sniffed out in plaintext. Implementing a firewall layer would also be necessary to block unwanted traffic.

+ No telemetry.<br/>The status of the applicaitons components are not immediately apparent. A monitoring service would be necessary to ensure site reliability.
