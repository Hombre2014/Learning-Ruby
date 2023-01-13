def format(s)
  number = s.gsub(/\D/,'')
  number.size < 4 ? number : number.scan(/\d{2,3}(?=\d{2,3}|\z)/).join('-')
end

p format("555 123 1234")
p format("(+1) 888 33x19")
p format("(+1) 888 33x193")
p format("(+1) 888 33x1934")
p format("")
p format("(+1),88455434333333")
p format "        1"
p format("(+1),884554343ldknfo &&'33")
