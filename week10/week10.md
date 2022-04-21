# Week 10 Labs


### Lab 10.1 : Permissions
This lab is all about diving into file permissions on linux, here I should probably document some important things about finding writeable files

* How 2 find world writable file: `find <dir> -perm /o+w`
* How 2 find SUID file `find <dir> -perm /4000`
* How 2 find totally open file `find <dir> -perm /0777`
