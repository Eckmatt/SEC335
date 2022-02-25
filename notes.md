# Notes

This is a list of important parameters and other pieces of documentation that are worth remembering


## Nmap
Nmap is an important network scanner utility that can return open ports and detect certain network vulnerabilities in systems.
#### Flags:
* --top-ports : pretty self explanatory - this flag, followed by a number (`n`), will scan the `n` most common ports.
* -v : this increases nmaps "verbose" level. Nmap will output more details during scans with each additional v tacked onto the verbose flag, up to -vvvv.
* -oG : Greppable output. Can be saved to a file
* -A : OS detection. Often very bad and inaccurate

## Cewl
Custom Word List generator is a useful ruby app that spiders a given URL
#### Flags
* -d: depth setting. default is set to 2, most of the time you can probably set it to 1
* -w: write output to a given file

## rsmangler
rsmangler is a useful tool for generating passwords out of a word list. Best used with a word list creator like cewl.
#### Flags
* -x : maximum length of generated words
* -m : minimum length for generated words
* --file : input file
* --output : self-explanatory

## hydra
Brute force application designed to test passwords
#### Flags
* -l : username to login with
* -P : file containing list of potential passwords
* -s : specific service/port to target
* -f : target
