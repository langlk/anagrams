#!/usr/bin/env ruby

require 'rspec'
require 'palindromes'

describe("Palindrome#form_palindrome?") do
  it("returns false if if first input does not equal reverse of second") do
    expect(Palindrome.are_palindrome?("cat", "act")).to(eq(false))
  end

  it("returns true if first input equals the reverse of the second") do
    expect(Palindrome.are_palindrome?("diva", "avid")).to(eq(true))
  end
end
