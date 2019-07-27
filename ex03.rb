def input_isbn
  puts 'ISBNを入力してください'
  isbn = gets.chop
  result = check_isbn(isbn)
  case result
  when :invalid_input
    puts '入力ミスです'
  when :invalid_number
    puts '不正番号です'
  when :valid
    puts '正しい番号です'
  end
end

def check_isbn(isbn)
  # 桁数 10桁
  return :invalid_input if isbn.size != 10

  # 各桁の数値を取り出す
  # ['4', '7'...] 文字列分解→
  numbers = isbn.split('').map do |v|
    if v =~ /x/i
      10
    else
      v.to_i
    end
  end

  sum = 0
  numbers.each_with_index { |n, i| sum += n * (10 - i) }

  if sum % 11 == 0
    :valid
  else
    :invalid_number
  end
end

input_isbn

#4-915673-56-1
#
#4 * 10
#9 *  9
#1 *  8
#5 *  7  
#6 *  6
#7 *  5
#3 *  4
#5 *  3
#6 *  2
#
#1
# src http://www.kumei.ne.jp/c_lang/intro/no_08.htm
