# q1)
# frozen_string_literal: true
# a b c d e f g h i j k
# Divide evenly into 3 groups. People get different. Result each time they run randomly.

# Save people array 'members'
members = ["a","b","c","d","e","f","g","h","i","j","k"].shuffle

# Save 'group_' remainder divided by 3 (members % 3 )

group_a = []
group_b = []
group_c = []
members.each_with_index do |item, i|
  case i % 3
  when 0
    group_a << item

  when 1
    group_b << item

  when 2
    group_c << item
  end

end


p "group A = #{group_a}"
p "group B = #{group_b}"
p "group C = #{group_c}"
