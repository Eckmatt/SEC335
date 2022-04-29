# Week 10 Labs


### Lab 10.1 : Permissions
This lab is all about diving into file permissions on linux, here I should probably document some important things about finding writeable files

* How 2 find world writable file: `find <dir> -perm /o+w`
* How 2 find SUID file `find <dir> -perm /4000`
* How 2 find totally open file `find <dir> -perm /0777`


### Lab 10.2 : Exploit Nancurinir
This lab was built around exploiting Nancurinir. I was very lost through a lot of this lab, and it required the use of the hints as well as help from a classmate. For a lot of these labs, I struggle with how to find and set up vulnerabilities. Things like finding the phpMyAdmin page is something that is kind of confusing to me. I never would have thought that that was just something that I should try. It's kind of been a reoccuring trend with this class - I end up having to use hints or classmates help because I don't think to do even simple things to further my access. For example, I sat around scratching my head for a while before I looked at a classmates notes that they had given me and realized that I could write to /etc/passwd to get a new user - I hadn't even considered the fact that just writing a new line to the file would make a new user. My hope is that the things I do learn will serve as tools that will maybe help me in the future.
