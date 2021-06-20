
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Diagram/Project1_Network_Diagram.png]

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the filebeat-playbook.yml file may be used to install only certain pieces of it, such as Filebeat.

  [Filebeat Playbook File](Ansible/filebeat-playbook.yml)


This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly _available____, in addition to restricting _access__  to the network.
- _What aspect of security do load balancers protect?_
Load balancers protects the system from DDoS attacks by shifting attack traffic.
- _What is the advantage of a jump box?_
 The advantage of a jump box is to give access to the user from a single node that can be secured and monitored.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _logs____ and system _traffic__.
- _ What does Filebeat watch for?_
Filebeat monitors the log files or locations that one specifies, collects log events, and forwards them either to Elasticsearch or Logstash for indexing.
- _ What does Metricbeat record?_
Metricbeat takes the metrics and statistics that it collects and ships them to the output that one specifies, such as Elasticsearch or Logstash.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name         | Function | IP Address | Operating System |
|--------------|----------|------------|------------------|
| Jump-Box     | 
|-Provisioner  | Gateway  | 10.0.0.1   | Linux            |
|              |          |            | 
|TODO          |          |            |                  |
| TODO         |          |            |                  |
| TODO         |          |            |                  |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the _Elk Server_____ machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
•	- _ Workstation Public IP 24.23.185.52 through TCP 5601_.


Machines within the network can only be accessed by Workstation and Jump-Box-Provisioner____.
•	- _ Which machine did you allow to access your ELK VM? What was its IP address?_

        _ Workstation Public IP 24.23.185.52 through TCP 5601_

•	_ Jump-Box-Provisioner IP : 10.0.0.7 via SSH port 22_


A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes/No              | 10.0.0.1 10.0.0.2    |





### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _ What is the main advantage of automating configuration with Ansible?_

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![Images/Elk-container.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _ 1.Web-1 : 10.0.0.8_
  _ 2.Web-2 : 10.0.0.9_
  _ 3.Web-3 : 10.0.0.10_  

We have installed the following Beats on these machines:
- _Filebeat and Metricbeat are specifically installed in these machines._

These Beats allow us to collect the following information from each machine:
- _Filebeat collect data (detects changes)from the file system.It can aid in locating new additions to recently added files or even iform you if those files have been previously modified.We are using this to monitor our Web Log Data._
 _ Metricbeat detects changes in the system metrics,such as CPU usage.Metricbeats creates an event and informs about the uptime/downtime._ 
 
### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _hosts____ file to include which machine/machines the playbook will run on. eg: [ELK] 10.1.0.4 ansible_python_interpreter=/usr/bin/python3
- Run the playbook, and navigate to _____http://[your.ELK-VM.External.IP]:5601/app/kibana_____________ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._

