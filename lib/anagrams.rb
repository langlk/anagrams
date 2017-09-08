#!/usr/bin/env ruby
require 'palindromes'

class Anagram
  def self.is_word?(input)
    input.match(/[aeiouy]/i) ? true : false
  end

  def self.are_anagrams(input1, input2)
    puts is_word?(input1)
    if !(is_word?(input1) & is_word?(input2))
      return "Error: Inputs must consist of real words."
    end
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
