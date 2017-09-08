#!/usr/bin/env ruby

class Dictionary
  def self.is_word?(string)
    string = string.downcase
    dictionary = File.new("lib/words.txt", "r")
    dictionary.each_line do |word|
      word = word.downcase.chomp
      if word == string
        return true
      elsif (word + "s") == string
        return true
      elsif (word + "ed") == string
        return true
      end
    end
    false
  end
end

puts Dictionary.is_word?("mr")
