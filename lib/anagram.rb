#!/usr/bin/env ruby

require_relative 'dictionary'
require_relative 'palindrome'

class Anagram
  attr_reader(:original)

  def initialize(string)
    @original = string
  end

  def anagram_of(string)
    self.class.are_anagrams(@original, string)
  end

  def get_anagrams
    only_alpha = @original.downcase.gsub(/[^a-z]/,"")
    only_alpha.chars.permutation.map do |permutation|
      permutation.join("")
    end
  end

  # while this method is not in use anymore, I'm leaving it in to show that I did meet the original rules of the project before implementing the is_word? method in Dictionary.
  def self.is_word?(string)
    # Regex to find if input includes a vowel.
    string.match(/[aeiouy]/i) ? true : false
  end

  def self.all_words?(string)
    if string == ""
      return false
    end
    non_words = string.split.reject { |word| Dictionary.is_word?(word) }
    non_words.length == 0
  end

  def self.are_antigrams?(string1, string2)
    matches = string1.chars.select { |char| string2.include?(char) }
    matches.length == 0
  end

  def self.are_anagrams(string1, string2)
    # Regex to remove punctuation from downcased inputs.
    string1 = string1.downcase.gsub(/[^a-z0-9\s]/,"")
    string2 = string2.downcase.gsub(/[^a-z0-9\s]/,"")
    if !(all_words?(string1) & all_words?(string2))
      return "Error: Inputs must consist of real words."
    end
    # Result should say "words" if inputs are one word each, and "phrases" otherwise.
    input_type = string1.include?(" ") | string2.include?(" ") ? "phrases" : "words"
    # Now that we know if words are plural, we don't want spaces.
    string1.delete!(" ")
    string2.delete!(" ")
    if string1.chars.sort == string2.chars.sort
      result = "These #{input_type} are anagrams."
      if Palindrome.are_palindrome?(string1, string2)
        result += " They also form a palindrome."
      end
      return result
    elsif are_antigrams?(string1, string2)
      return "These #{input_type} are antigrams (no letter matches)."
    else
      return "These #{input_type} are not anagrams."
    end
  end
end
