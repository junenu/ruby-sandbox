# install from https://github.com/interop-tokyo-shownet/ipaddr-ext
require 'ipaddr-ext'

# to_s_with_prefix
ipaddr1 = IPAddr.new("3ffe:505:2::1")
p ipaddr1.to_s_with_prefix
#=> "3ffe:505:2::1/128"

ipaddr2 = IPAddr.new("3ffe:505:2::/64")
p ipaddr2.to_s_with_prefix
#=> "3ffe:505:2::/64"

# +/-
ipaddr3 = IPAddr.new("3ffe:505:2::1")
p (ipaddr3 + 5)
#=> #<IPAddr: IPv6:3ffe:0505:0002:0000:0000:0000:0000:0006/ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff>
p (ipaddr3 + 5).to_s_with_prefix
#=> "3ffe:505:2::6/128"

ipaddr4 = IPAddr.new("3ffe:505:2::9")
p (ipaddr4 - 5)
#=> #<IPAddr: IPv6:3ffe:0505:0002:0000:0000:0000:0000:0004/ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff>
p (ipaddr4 - 5).to_s_with_prefix
#=> "3ffe:505:2::4/128"

# broadcast / wildcard_mask
ipaddr5 = IPAddr.new("192.0.2.0/24")
p (ipaddr5.broadcast)
#=> #<IPAddr: IPv4:192.0.2.255/255.255.255.0>
p (ipaddr5.wildcard_mask)
#=> "0.0.0.255"

# to_host
ipaddr5 = IPAddr.new("3ffe:505:2::/64")
p (ipaddr5.to_host)
#=> #<IPAddr: IPv6:3ffe:0505:0002:0000:0000:0000:0000:0000/ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff>
p (ipaddr5.to_host.to_s_with_prefix)
#=> "3ffe:505:2::/128"
p (ipaddr5.to_host.succ.to_s_with_prefix)
#=> "3ffe:505:2::1/128"

# to_json: export with prefix string
p (IPAddr.new("3ffe:505:2::/64").to_json) 
#=> "\"3ffe:505:2::/64\""