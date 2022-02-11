$subnet = $args[0]
$dns = $args[1]

for ( $ip=1; $ip -le 254; $ip=$ip+1 ) {
  $target=$subnet + "." + $ip
  Resolve-DnsName -DnsOnly $target -Server $dns -ErrorAction Ignore | select Name, NameHost
  
 }
