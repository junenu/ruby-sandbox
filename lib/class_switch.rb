class Swich
    def initialize(hostname,ipv4_address)
        @hostname = hostname
        @ipv4_address = ipv4_address
    end

    def hostname
        puts "This switch's hostname is #{@hostname}"
    end

    def ipv4_address
        puts "#{@ipv4_address}"
    end
end

sw1 = Swich.new("Apple-SW","10.56.32.4/24")
sw2 = Swich.new("Banana-SW","10.56.42.4/24")

sw1.hostname #=> This switch's hostname is Apple-SW
sw2.hostname #=> This switch's hostname is Banana-SW
sw1.ipv4_address #=> 10.56.32.4/24
sw2.ipv4_address #=> 10.56.42.4/24