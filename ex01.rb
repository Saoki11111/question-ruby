require 'scanf'

puts 'a,bを入力してください'
a, b = scanf '%d %d'

printf "a = %d b = %d\n",a, b
printf "a + b = %d\n",a + b
