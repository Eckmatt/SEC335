# How 2 Weevely

#### Introduction
Weevely is a PHP backdoor utility that allows users to set up a reverse shell on an exploited system

### Basic Weevely Setup and Commands
`weevely generate <pass> /path/to/php/file.php`
This creates a simple backdoor protected by a password at the given filepath. This file is encoded, and we can upload this file to the exploited/vulnerable directory.
A tip I was given by a youtube video that has a great tutorial on how to use weevely was to give the file an innocous name that would blend into the system, like "404.php",
which could stand for a 404 redirect on a webserver.
####
All thats left to do now is to deploy the backdoor script onto the exposed/exploited system, in the case of the 8.1 lab, we leveraged the misconfigured ftp client.

`weevely http://target/file.php <pass>`
This allows us to leverage the deployed backdoor script and basically opens a shell on the target system. Rather than having to use a web browser or curl, we can execute commands directly from the terminal.
