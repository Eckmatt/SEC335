# Week 11

### Lab 11.1 - The Metasploit Framework

### Notes on Metasploit
Based on my investigations in this lab, the process of using metasploit involves selecting an exploit to use, setting a payload to use, and then configuring parameters
for the exploit. Exploits are organized in metasploit under the effected operating system(windows/linux/mac/multi), the effected service (http, for example) and then
the name of the exploit. Perhaps it was just me, but I found the naming convention of these exploits mostly nonsensical. Obviously not every single exploit can have 
a fancy name like "Heartbleed" and "Shellshock". However I found myself running into a numbskulled issue in which I had to look up an exploit on exploitdb, and then
look up what the same exploit was called in metasploit. Once over this hurdle, we have full range to select a list of parameters, called options, for the exploit. 
Options use `SET` and we can configure things like target host, target port, effected user, all depending on the type of user. This user interface is much more elegant
and considered, and metasploit makes it easy to set these options via the command line. Metasploit is obviously a tool of convience - it takes a lot of the keystrokes 
out of deploying a lot of exploits by hand. If someone were to work as a penetration tester, I could totally see the appeal - you would have to be deploying a lot of
exploits and removing a lot of the pointless keystrokes would be much appreciated.
