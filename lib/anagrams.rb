#!/usr/bin/env ruby
require 'palindromes'

class Anagram
  def self.is_word?(input)
    return false
  end

  def self.are_anagrams(input1, input2)
    if input1.downcase.chars.sort == input2.downcase.chars.sort
      result = "These words are anagrams."
      if Palindrome.are_palindrome?(input1, input2)
        result += " They also form a palindrome."
      end
      return result
    else
      return "These words are not anagrams."
    end
  end
end
