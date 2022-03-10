# Week 7 Tech Journal


### This Weeks Assignment
This weeks assignment focuses on exploiting the "Pippin" box. The Pippin box has a poorly configured ftp client that
allows users to upload anything into one of its directories. This allows a user to take advantage of the simple-backdoor.php script
located in Kali Linux's usr/share directory to create a backdoor and perform a number of different exploits. This php backdoor allowed
me to run commands remotely against the box. After digging through the files I could see and get my hands on, I noticed that one file, 
"LocalSettings.php" was available on the FTP share, and contained a password for a mariadb stored in plaintext. I used my backdoor to `cat /etc/passwd` and
found a unique user in "peregrin.took". I tested an SSH login with this user and password and sure enough I was in. After that, I went into the mariadb password,
and after poking around I found two users with their passwords stored in hashes. I was interested in the "Pippin" user, so I took the hash and did some
formatting with it so that I could attempt to crack it with `hashcat`. `hashcat` was quick and before I knew it I was able to login to the website using the
Pippin credentials.

### Important Notes
* I had needed to use the hint 1 video to find the backdoor script as well as the "LocalSettings.php" file. LocalSettings in particular is potentially worth knowing, as I may be able to do more with that file if I know to look for it next time.
* `hashcat` is maybe a bit picky with its formatting. Also I learned a couple useful flags and commands: `-m` sets the hash format, `-w` sets the workload priority (i.e how bad its going to fry your GPU) and `-a` which tells it what word list to check the hash against. `-a` also allows you to check against "rules" as well which I'm unfamiliar with.
* `get` and `put` are the basic commands for interacting with an FTP server, otherwise you can move through directories like in bash.


### Reflection
This lab was a doozy - I had to use the hint 1 video because I was totally unaware of the simple backdoor script present on Kali. The "LocalSettings" file I also missed until I watched that video, but other than that I cruised through the deliverables here with relative ease. Once I was able to actually able to get into the computer via SSH I was in it to win it. If I was Pippin, the web admin, I would a) diversify their passwords a bit, use a different password for Mariadb as you did for your login, b) I would not store the LocalSettings on a publicly accessible FTP server, and c) I would again avoid having a publicly accessible AND writable FTP directory, to avoid a hacker much more competent than myself getting access to their creds and other important information.
