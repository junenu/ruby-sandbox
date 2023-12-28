def fizz_buzz(num)
    if num % 15 == 0
        'Fizz Buzz'
    elsif num % 3 == 0
        'Fizz'
    elsif num % 5 == 0
        'Buzz'
    else
        num.to_s
    end
end

numbers = (1..15).to_a #=>[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
#=>numbers = (1...15).to_a #=>[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
numbers.each do |num|
    puts fizz_buzz(num)
end
