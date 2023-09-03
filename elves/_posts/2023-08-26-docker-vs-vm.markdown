---
layout: post
date: 2023-08-26 02:51:01 -0700
title: docker-vs-vm
categories: tech
---

Docker is safe in the sense that it works reliably. However, it does not separate a process from the machine on which it is running. If you have a virus in your docker container, then it could spread to other docker containers or onto the host machine.  A VM should isolate a virus and prevent spread outside the VM but they are usually resource intensive. Docker containers, on the other hand, use less resources and load more quickly than a virtual machine.

VirtualBox is a free, open source, solution for creating virtual machines, but the extension pack may not be free. On Windows you could use Hyper-V at no additional cost beyond the price of a server edition. Lots of people use VMware but I have very little experience with it.


