class Screen
  def self.screen(array)
    array.each do |row|
      count = 0
      row.each do |num|
        case num
        when 1
          print('o')
        when -1
          print('x')
        when 0
          print(' ')
        end
        count += 1
        print('|') if count <= 2
      end
      print("\n")
    end
  end
end
