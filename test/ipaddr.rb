require 'ipaddr'

ipaddr1 = IPAddr.new("192.168.24.4/24")
p ipaddr1
#<IPAddr: IPv4:192.168.24.0/255.255.255.0>

p ipaddr1.to_range()
#<IPAddr: IPv4:192.168.24.0/255.255.255.0>..#<IPAddr: IPv4:192.168.24.255/255.255.255.0>

