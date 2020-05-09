# Meraki Ansible Deployment Guide

When it comes to networks more and more organisations are looking to standardise their tooling for the configuration and management of these networks. An increasingly popular tool is the use of Ansible as part of a wider service chain to standardise what deployments look like.

In this short guide I will be showing how we can use Ansible and Cisco Meraki and potentially. A third party service management system such as Jira or Service now to automate the deployment on branches the Meraki dashboards all the way from creation of networks, claiming of devices, binding of network templates, updating network specific details and 

This kind of usecase is massive for any kind of retail environment where networks are likely to be simple but the numbers of actual physical locations could go into the thousands. With our workflow we’re able to automate the whole logical deployment with the creation of a single ticket. It’s typically not feasible to have a dedicated network professional visit each location to carry out the install. With this kind of solution the deployment can be a mostly physical job where all thats required it to plug in the cables and test connectivity as much of the deployment will have been done before the infrastructure probably arrives at its destination.

Diagram of workflow

The handover to the networking configuration here happens in the generation of the CSV files by or ITSM system. In this case ServiceNow

Our Ansible playbook will then take this CSV and use it to populate the variables that it requires to run and will then execute. For a full breakdown of the tasks in the playbook skip ahead to the next section.

One of the things that makes this so simple is the Meraki platform which provides us two main benefits here that are quite unique. Firstly Meraki supports ZTP natively therefore will allow the devices to call home as soon as they receive an internet connection. This will then allow the devices to pull down a config thats already been set well in advance and we don’t have to rely on our playbook getting individual device connectivity, the dashboard has the device configs stored waiting for the device to announce itself.

Secondly the way Meraki supports templates allows us to abstract away much of the configuration in our playbook and automate much of the config simply by attaching a template. All we have to do is build a few custom tasks for firewall rules and IP Addressing which is specific to our branch.

Breakdown of our playbook

Watch this short video here where I explain the process.

And there we have it, showing how you as an IT team can standardise your configuration tooling and automate your branch environment by bringing up new sites in a fraction of a time with minimal human intervention.

To find out more and actually lab this up yourself go to my Github
