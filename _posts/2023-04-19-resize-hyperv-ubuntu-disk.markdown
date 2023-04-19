---
layout: post
title:  "Resize Hyper-v Ubuntu Disk"
date:   2023-04-19 07:00:00 -0800
categories: howto
---

I used the **Quick Create** option in the **hyper-v manager** to create an ubuntu22.04desktop. I thought I was creating a disk that was 127 gigabyte in size, but it had a maximum size of less than 12 gigabyte.

I shut down the virtual machine and deleted the checkpoint so that only **Now** remained. After the checkpoint was deleted **Now** disappeared and the **hyper-v manager** showed no checkpoints.

I then went into settings, found the virtual hard drive, and edited it. I resized it to 64 gigabytes. All that was easy and went well.

I started my VM and found that I still only had a little more than 11 gigabyte of hard drive available. To fix this I tried to start **gparted** but it did not exist so I had to install it by following the instructions given to me at the command line:

    sudo apt install gparted

I then started **gparted** by typing that word at the command line. I selected the disk I wanted to resize, used my mouse to resize it, and clicked the green check mark to save my work. After that I had 64 available on my hard drive.