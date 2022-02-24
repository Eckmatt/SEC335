# Week 4 Tech Journal

### This Weeks Assignment
This week we focused on the "Cupcake" box. The cupcake box is a simple apache server that features a pretty glaring open vulnerability - 
dubbed ["shellshock"](https://owasp.org/www-pdf-archive/Shellshock_-_Tudor_Enache.pdf). Shellshock is a vulnerability that allows a user to remote execute commands. 
In Activity 4.1, we used tools available on a fresh Kali install to identify this vulnerability on the Cupcake box and exploit it for several pieces of information. 
We were able to read root-privledge information, including the /etc/passwd file, and 
were even able to comprimise a users credentials and remote ssh into the box using hydra, and then escalate into the root user.

### Tech Journal Deliverables
- Nmap at the top 100 ports revealed to us that ssh and http were open.
- First, tell Nmap to save results to a text file, then run the command as follows: `nmaptocsv -i result.txt -d ","`
- I used both the `nmap --script http-shellshock` as well as curl as a method for executing commands remotely
- After reading the /etc/passwd file, I grepped the username I planned to attempt to brute force against the "rockyou.txt" file we were given and was given 28 potential passwords. I used hydra with my list of potential passwords targeting cupcake's ssh port
- We can use python on our own box to make a directory available via a certain port, and then wget from Cupcake once we get in.


### Reflection
I didn't really understand how to use a lot of the tools we were using in this lab at first, but after getting some help from someone in the class I had a better time. I think its just because I have bad eyes, but I found exploit-db's menu really hard to read. I didn't really understand how the exploit worked either - how was I supposed to know how to perform the exploit without being told what the correct sequence of commands was?
