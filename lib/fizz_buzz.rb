def fizz_buzz(num)
  if num % 15 == 0
    puts 'Fizz Buzz'
  elsif num % 3 == 0
    puts 'Fizz'
  elsif num % 5 == 0
    puts 'Buzz'
  else
    puts num.to_s
  end
end


fizz_buzz(1)
fizz_buzz(2)
fizz_buzz(3)
fizz_buzz(4)
fizz_buzz(5)
fizz_buzz(6)
fizz_buzz(15)
