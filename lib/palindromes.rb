#!/usr/bin/env ruby

class Palindrome
  def self.are_palindrome?(string1, string2)
    return string1.downcase == string2.downcase.reverse
  end
end
