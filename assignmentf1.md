# Assignment F.1: Home Pentesting Lab


### Deliverable 1
This assignment involved making a home lab for penetration testing, starting with the Kali box. For starters, I needed to set up the NAT anb VMNet 5,6,7 networks, with
with 192.168.229.0, 10.0.4.0, 10.0.5.0, 10.0.6.0 subnet ips respectively. I downloaded all the VM ISO's to my usb flash and used it to deploy the installer. I created a kali box, set the box to NAT networking, and followed the Kali installer until it was set and ready to use. After that I created a linked clone of that VM and created my kali-lab box. You should be able to ping google.com with this box

### Deliverable 2
Next step was to create a vyos image. First thing was to create a cloneable version of vyos called 'vyos-base'. Vyos needs 2 network cards - one that connects to kali and a seperate one that connects to VMNet 5I provisioned the box with the specs given by Devin, and then set about configuring my base. This mainly involved installing vyos, using defaults for pretty much everything, removing the virtual CD/ROM and then scrubbing the device of any evidence of a MAC address. Next we cloned to create a snapshot of the vm and create a linked clone called "vyos-lab" off of the snapshot. Afterwords make the following configurations.
* `set interfaces ethernet eth0 address '192.168.229.10/24'
* `set interfaces ethernet eth0 description 'Nat on VMware Host'
* `set interfaces ethernet eth1 address '10.0.5.2/24'
* `set interfaces ethernet eth1 description 'VMNET5-RANGE'
* `set protocols static route 0.0.0.0/0 next-hop 192.168.229.2
* `set service ssh listen-address '192.168.229.10'
* `set system name-server '192.168.229.2'
* `set service ssh listen-address 192.168.229.10
* `commit
* `save

`With This all done, you should have your interfaces configured and be able to ping google.com.

### Deliverable 3:
Next, we need to create a centos-base VM. Doing this is very simple, simply install the OS, and then the main trouble again is scrubbing the box of MAC addresses. Make sure to install vmware tools, its just good to use. Make sure the box is on VMNet 5. Next, shut this box down and create a snapshot and then a linked clone of the box called "cupcake". After that, make a couple configurations in vyos to establish SSH and DHCP.
* `set service dhcp-server global-parameters 'local-address 10.0.5.2;'
* `set service dhcp-server shared-network-name DHCPPOOL authoritative
* `set service dhcp-server shared-network-name DHCPPOOL subnet 10.0.5.0/24 default-router '10.0.5.2'
* `set service dhcp-server shared-network-name DHCPPOOL subnet 10.0.5.0/24 domain-name 'range.local'
* `set service dhcp-server shared-network-name DHCPPOOL subnet 10.0.5.0/24 lease '86400'
* `set service dhcp-server shared-network-name DHCPPOOL subnet 10.0.5.0/24 range POOL1 start '10.0.5.50'
* `set service dhcp-server shared-network-name DHCPPOOL subnet 10.0.5.0/24 range POOL1 stop '10.0.5.100'
* `commit
* `save
`
You should now be able to ssh into vyos-lab and ping cupcake at 10.0.5.50.


### Deliverable 4:
This section I had a difficult time with. This deliverable is to install and set up wireguard on kali. First, run `sudo apt install wireguard`. Then, cd into `/etc/wireguard`. run `umask 077`, and then use `wg genkey | tee privatekey | wg pubkey > publickey` as a shorthand to create both a privatekey and publickey file. Next we have to do the same on vyos. Go into `configure` and `run generate pki wireguard key-pair install interface wg0`. The command Devin recommended was depreciated on the version of vyos that I grabbed for this lab, but I managed to find a workaround in this. As you might suspect, this creates a wireguard key-pair and binds it a given wireguard interface, in this case wg0. Next we feed vyos the rest of the configuration.
* `set interfaces wireguard wg0 address '10.0.99.1/24'
* `set interfaces wireguard wg0 peer namegoeshere allowed-ips '10.0.99.100/32'
* `set interfaces wireguard wg0 peer namegoeshere public-key clientpublickey
* `set interfaces wireguard wg0 port '51820'
* `commit
* `save
* `exit
` Once this is done, return to the kali box and create a [wg0.conf](wg0.conf.wack) file in /etc/wireguard. Use the linked file as a template. Once completed, you should have a working wireguard connection on wg0. Use `sudo wg-quick up wg0` to enable the connection and you should be able to ssh to the centos box from Kali, although I was unable to do so. I'm not sure exactly what causes this issue.


### Reflection
This lab took me a while, mainly because I got stumped by vyos, and trying to configure the wireguard interface. It required me scrutinizing vyos' documentation as well as the instructions given by Devin, and even once I fixed it, I still could not connect to centos. I'm not sure what has caused this issue, if I had to guess, it's an issue with the VPN and somehow not routing it correctly. I'll continue working on it and trying to get it fixed, but I wanted to get this lab done done and get this out to you Devin now rather than even later.

