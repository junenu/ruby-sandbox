p "xxxxabcfffpat".slice(/a../) # => "abc"
p "xxx".slice(/a../) # => nil

p "static int fact(int n) {...}".scan(/\w+/) # => ["static", "int", "fact", "int", "n"]

p "   def print(str)".slice(/^\s*def\s+([^\s\(]+)/,1) # => "print"