# Week 8 Tech Journal



### This Weeks Assignments


#### Lab 8.1: Weevely
This lab was really interesting and pretty quick to do. We reexamined pippin and took another more practical look at the exposed web server. I found a youtube video about Weevely that served as my tutorial for this lab, and it was really great and easy to follow, plus the whole thing is only 10 minutes long.
* Link to video: [here](https://www.youtube.com/watch?v=Ig-HS6kxz4Q)
* Link to Weevely Documentation: [here](https://github.com/Eckmatt/SEC335/blob/main/week8/weevelydocumentation.md)
####
At first, the video confused me a bit because I for some reason tried to use ftp to access the backdoor script, but this did not work correctly. Once I remembered how I accessed the previous backdoor script, I used http and connected no problem, and got the required information easily.

#### Lab 8.2: Reverse Shells
This lab was all about setting up reverse shells. Reverse shells are all about initiating a connection from the target to the attacker, and doing this requires some setup. Usually it requires us to install a "backdoor", which is either a program script, or a long string of code to be executed hot off the command line. Reverse shell scripts require some form of "throwing" a shell at the attacker so said attacker can "catch" it. We used this attack against rocky, pippin, my windows machine, and then rocky again, using php, cmd, and python reverse shell setups. The easiest way I found to turn off Windows Defender was to go into windows defender settings, go into virus and threat detection, and then turn off real time protection. This allowed me to execute the cmd reverse shell after staring at the code I copied for maybe 10 minutes it worked perfectly.

Python Shells: [here](https://github.com/Eckmatt/SEC335/edit/main/week8)
Reference for Python Shells: [here](https://www.thepythoncode.com/article/create-reverse-shell-python)
