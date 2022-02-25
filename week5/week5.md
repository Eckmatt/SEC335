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
