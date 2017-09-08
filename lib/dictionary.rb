#!/usr/bin/env ruby

class Dictionary
  def self.is_word?(string)
    dictionary = File.new("lib/words.txt", "r")
    dictionary.each_line do |word|
      if word.downcase.chomp == string.downcase
        return true
      end
    end
    false
  end
end
