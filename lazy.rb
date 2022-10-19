require 'prime'

palindrome_prime = -> (n) do
  Prime.lazy.select { |x| x if x.to_s == x.to_s.reverse }.first(n)
end

n = gets.to_i
# p palindrome_prime.(n)

def transcode(iso_str)
    iso_str.encode!(Encoding::UTF_8)
end

# p transcode('&')

# p "   Hello         World!  \r\n".chomp(' ').strip

def strike(tag)
    "<strike>#{tag}</strike>"
end

# p strike("Miau!")

def strike(tag)
    "<strike>#{tag}</strike>"
end

def mask_article(str, arr)
    new_str = ''
    arr.map  do |w|
        new_str = str.gsub(w, strike(w)) if str.include? w
    end
    new_str
end
