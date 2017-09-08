#!/usr/bin/env ruby
require 'palindromes'

class Anagram
  attr_reader(:original)

  def initialize(string)
    @original = string
  end

  def self.is_word?(input)
    input.match(/[aeiouy]/i) ? true : false
  end

  def self.all_words?(input)
    non_words = input.split.reject { |word| is_word?(word)}
    non_words.length == 0
  end

  def self.are_antigrams?(input1, input2)
    matches = input1.chars.select { |char| input2.include?(char) }
    matches.length == 0
  end

  def self.are_anagrams(input1, input2)
    if !(all_words?(input1) & all_words?(input2))
      return "Error: Inputs must consist of real words."
    end
    input_type = input1.include?(" ") | input2.include?(" ") ? "phrases" : "words"
    input1 = input1.downcase.gsub(/[^a-z0-9]/,"")
    input2 = input2.downcase.gsub(/[^a-z0-9]/,"")
    if input1.chars.sort == input2.chars.sort
      result = "These #{input_type} are anagrams."
      if Palindrome.are_palindrome?(input1, input2)
        result += " They also form a palindrome."
      end
      return result
    elsif are_antigrams?(input1, input2)
      return "These #{input_type} are antigrams (no letter matches)."
    else
      return "These #{input_type} are not anagrams."
    end
  end

  def anagram_of(string)
    self.class.are_anagrams(@original, string)
  end
end
