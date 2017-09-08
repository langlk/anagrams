#!/usr/bin/env ruby

class Palindrome
  def self.are_palindrome?(string1, string2)
    return string1 == string2.reverse
  end
end
