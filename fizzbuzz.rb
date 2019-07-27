def fizz_buzz(n)
  if n % 15 == 0
    'Fizz Buzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    "Buzz"
  else
    n.to_s
  end
end

puts fizz_buzz(1) #== "1"
puts fizz_buzz(2) #== "2"
puts fizz_buzz(3) #== "Fizz"
puts fizz_buzz(4) #== "4"
puts fizz_buzz(5) #== "Buzz"
puts fizz_buzz(6) #== "Fizz"
puts fizz_buzz(15)# == "Fizz Buzz"
