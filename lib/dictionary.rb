#!/usr/bin/env ruby

class Dictionary
  def self.is_word?(string)
    File.readlines("/usr/share/dict/words").each do |word|
      if word.downcase.chomp == string.downcase
        return true
      end
    end
    false
  end
end
