def make_phone_call(number, international_code = 1, area_code = 501)
  puts "Calling #{international_code}-#{area_code}-#{number}"
end

make_phone_call(12345678)
make_phone_call(123456778, 7, 201)
