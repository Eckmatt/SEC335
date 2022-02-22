# Week 4 Tech Journal

### This Weeks Assignment
This week we focused on the "Cupcake" box. The cupcake box is a simple apache server that features a pretty glaring open vulnerability - 
dubbed ["shellshock"](https://owasp.org/www-pdf-archive/Shellshock_-_Tudor_Enache.pdf). Shellshock is a vulnerability that allows a user to remote execute commands. 
In Activity 4.1, we used tools available on a fresh Kali install to identify this vulnerability on the Cupcake box and exploit it for several pieces of information. 
We were able to read root-privledge information, including the /etc/passwd file, and 
were even able to comprimise a users credentials and remote ssh into the box using hydra, and then escalate into the root user.

### Important Information/Takeaways
