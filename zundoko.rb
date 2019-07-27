# ズン　が四回以上続いたあとに　ドコ　があれば　キヨシ　を出力する
# ズンズンズンズンズンズンドコ　キヨシ

def zundoko
  zuncount = 0
  while true
    zundoko = rand(1..2)
    if zundoko == 1
      puts 'ズン'
      zuncount += 1
    else
      puts 'ドコ'
      if zuncount >= 4
        puts 'キヨシ!'
        break
      else
        zuncount = 0
      end
    end
  end
end

zundoko
zundoko
