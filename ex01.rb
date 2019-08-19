#require 'scanf'
#
#puts 'a,bを入力してください'
#a, b = scanf '%d %d'
#
#printf "a = %d b = %d\n",a, b
#printf "a + b = %d\n",a + b

#i = 0
#while i < 5
#  if i == 3
#    print "iは#{i}です。"
#    break
#  end
#  i += 1
#end

5.times do |i|
  ans = 2
  if i == 2
    puts "iは#{i}です。"
    if ans == 2
      puts "ansは#{ans}です。"
      break
    end
  end
end

