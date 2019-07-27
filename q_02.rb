# q2)
# 
# If you drink 3 cans, you get 1can
# If you can drink 5 cans, you can drink 7 cans
# Do it until the baskets is empty
# How many cans in total do you drink when have 20 cans?
#

backets = 20
drunk = 0

while backets > 0 do

#  if backets >= 3
#    backets = backets - 3
#    drunk = drunk + 3
#
#    backets = backets + 1
#  else
#    drunk = drunk + backets
#    backets = backets - backets
#  end


  if backets >= 3
    backets = backets - 3
    drunk = drunk + 3

    backets = backets + 1
  else
    drunk = drunk + backets
    backets = backets - backets
  end

end

puts drunk

