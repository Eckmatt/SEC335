# Week 2 Tech Journal


### Activity 2.1: Bash Refresher
Activity 2.1 is all about using some basic commands with bash. I'm pretty rusty with bash,
as the last time I used it was a little over a year ago, but it turns out I remembered
more than I thought, which allowed me to kind of brute force my way through the assignment.
Figuring out how to get the output of ping to spit itself correctly was the main problem I
ran into - it took me about an hour to realize that `"$?"` needed those double quotation marks.
Once I had solved that ping debacle, I found that nmap and fping were infinitely more
easier to use for these purposes then ping was in the first place, which is great to know.

#### Activity 2.1 Files:

##### Scripts
* [week2.sh](week2.sh)
* [week2-3.sh](week2-3.sh)
* [week2-8.sh](week2-8.sh)

##### Output Files
* [sweep.txt](sweep.txt)
* [sweep2.txt](sweep2.txt)
* [sweep3.txt](sweep3.txt)

### Lab 2.1 - Port Scanning 1

* [portscanner.sh](portscanner.sh)


### Lab 2.2 - Port Scanning 2

In this lab, we use nmap to explore open ports on Windows 10. We first ping to test connectivity. The ping from Kali to Windows 10 fails, however nmap targeting port 9999 succeeds, but bounces off the firewall. We went into the system settings through windows settings and turned on Remote Desktop Services, then use nmap to target the Remote Desktop port (3389), using the same command that we used previously. `nmap -n -p 3389 10.0.xx.xx` We also turn on Network Discovery, and file sharing through the settings on Windows 10, and a couple more ports are now open. We also explored a couple more flags, which can be seen [here](https://github.com/Eckmatt/SEC335/wiki/Useful-NMAP-flags). This lab was really fun, and I really like messing around with nmap. Its pretty intuitive, and I was able to follow the lab.
