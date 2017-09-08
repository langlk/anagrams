#!/usr/bin/env ruby

require 'rspec'
require 'palindromes'

describe("Palindrome#form_palindrome?") do
  it("returns false if if first input does not equal reverse of second") do
    expect(Palindrome.are_palindrome?("cat", "act")).to(eq(false))
  end
end
