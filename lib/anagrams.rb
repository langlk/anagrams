#!/usr/bin/env ruby

class Anagram
  def self.are_anagrams(input1, input2)
    if input1.downcase.chars.sort == input2.downcase.chars.sort
      return "These words are anagrams."
    else
      return "These words are not anagrams."
    end
  end
end
