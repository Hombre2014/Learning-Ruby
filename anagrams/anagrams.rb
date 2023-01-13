module Anagrams
  class Error < StandardError
  end

  class Problem
    def input_from_file(file_name)
      file = File.open(file_name, "r")
      array_of_words  = file.readlines.map(&:chomp)
      file.close
      puts array_of_words[0..2]
    end
  end
  words = Problem.new
  puts words.input_from_file("wordlist.txt")
end
