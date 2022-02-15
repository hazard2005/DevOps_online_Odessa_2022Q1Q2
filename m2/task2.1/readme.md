## Part 1 - Homework answers:
### 1.What are the most popular hypervisors for infrastructure virtualization?
Most popular hypervisors are VmWare, Xen, Proxmox and Qemu.
### 2.Briefly describe the main differences of the most popular hypervisors.
I worked only with VmWare early. It has many product for different purposes. VMware ESXi is server hypervisor with launched different OS. 
VMware vCenter is using to control them. It is commercial product but also is free version with restrictions.
***
## Part 2 - WORK WITH VIRTUALBOX:
Fig.1 - installed Virtual Box, create VM with Centos, cloning, grouping, check ip:
<img src="screenshots/1.jpg">

Fig.2 - create and manage snapshots:
<img src="screenshots/2.jpg">

Fig.3 - export and import operations
<img src="screenshots/3.jpg">

Fig.4 - Checking  the  connection between VM1, VM2, Host, Internet for different network modes.
<img src="screenshots/4.jpg">

Mode          | VM→Host       | VM←Host       |VM1↔VM2        |  VM→Net/LAN   |  VM←Net/LAN
------------- | ------------- | ------------- | ------------- | ------------- | -------------
Host-only     | +             | +             | +             |-              |-
Internal      | -             | -             | +             |-              |-
Bridged       | +             | +             | +             |+              |+
NAT           | +             | Port forward  | -             |-              |Port forward
NATservice    | +             | Port forward  | +             |+              |Port forward

Fig.5 - Work with CLI through VBoxManage
<img src="screenshots/5.jpg">

Fig.6 - Install, init and up Vagrant
<img src="screenshots/6.jpg">

Fig.7 - Connect via SSH, record time
<img src="screenshots/7.jpg">

Fig.8 - Stop and delete the created VM, create  own Vagrant box
<img src="screenshots/8.jpg">
<img src="screenshots/9.jpg">

