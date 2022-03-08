# Week 5 Tech Journal

### This Weeks Assignment
This week we directed our sights to a web application running on the "bios" box. This is a simple web server that contains several "bio" webpages for members of the
"shire" organization, and we used several different tools and techniques to guess their passwords for both html and ssh. To start, we used Nmap to check for top ports
that were exposed to the network, and we found that both ssh (port 22) and html (port 80) were open. With this in mind, I ran `dirb` against the "bios" box and found an
interesting directory labelled "secret". This "secret" webpage was locked behind a log in, which prompted me to attempt to engineer a password based off of the "bios"
present on the webpages. I used `cewl` to create a wordlist based on the bio pages of each member of the shire, and ran what I considered to be "important words" through 
`rsmangler` to hopefully create a useable password. This took a couple of attmepts - the words I initially thought would return good passwords ended up not working,
which prompted me to mangle another 5 or so words (as that was the longest list of words `rsmangler` could process at a time). Eventually, I got hits for 3 of the 4 
members of the shire, which then allowed me to login and access the "secret" webpage using `hydra` to determine the exact password. 

### Useful Documents
[Notes](/notes.md)


### Reflection
I ended up running out of time to complete the ssh part of this assignment, as I fell behind on work this week. However, the rest of the lab was interesting and taught me a lot. I really had to sit down and test every possible different word that could have been made into a password, and that instilled in me a lesson to really think things over, and really focus on everything that could become a potential password.

### Assignment 5.1 Sign In Hack
This was a really cool assignment, and an interesting way to break into a system. It makes me wonder if something like this is possible for other linux distributions.
Steps for Kali Linux Sign-in Hack
[1]. Restart Kali Box
[2]. On boot up screen, move cursor over default option and press `e`
[3]. edit line that ends in `splash` with `start init=/bin/bash`
[4]. mount the root directory using `mount -rw -o remount /`
[5]. change the root password using `passwd`
[6]. run `sync` and `umount /`
[7]. power cycle the kali box
