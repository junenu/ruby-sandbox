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

numbers = [1,2,3,10,15]
numbers.each do |num|
    puts fizz_buzz(num)
end
