#!/usr/bin/env ruby

class Anagrams
  def self.are_anagrams(input1, input2)
    if input1.chars.sort == input2.chars.sort
      return "These words are anagrams."
    else
      return "These words are not anagrams."
    end
  end
end
