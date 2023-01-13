def format(s)
  # number = s.gsub(/\D/,'')
  (s.gsub(/\D/,'')).size < 4 ? s.gsub(/\D/,'') : (s.gsub(/\D/,'')).scan(/\d{2,3}(?=\d{2,3}|\z)/).join('-')
end

puts format("+177324222n,jh00e71")
puts format("+17722n,jh00e71")
