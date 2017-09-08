#!/usr/bin/env ruby

require 'rspec'
require 'anagrams'

describe('Anagram#are_anagrams') do
  it('returns "These words are not anagrams." if two words are not anagrams') do
    expect(Anagram.are_anagrams("bob", "potato")).to(eq("These words are not anagrams."))
  end

  it('returns "These words are anagrams." if two words have the same letters') do
    expect(Anagram.are_anagrams("ruby", "bury")).to(eq("These words are anagrams."))
  end

  it('determines if two words are anagrams regardless of case') do
    expect(Anagram.are_anagrams("Ruby", "BURY")).to(eq("These words are anagrams."))
  end

  it('returns if two anagrams also form a palindrome') do
    expect(Anagram.are_anagrams("Avid", "Diva")).to(eq("These words are anagrams. They also form a palindrome."))
  end

  it('returns an error if either input does not contain a vowel (including y)') do
    expect(Anagram.are_anagrams("Rrgh", "Argh")).to(eq("Error: Inputs must consist of real words."))
  end
end

describe("Anagram#is_word?") do
  it("returns false if input does not contain a vowel (including y).") do
    expect(Anagram.is_word?("Rrrgh")).to(eq(false))
  end

  it("returns true if input does contain a vowel (including y).") do
    expect(Anagram.is_word?("Hello")).to(eq(true))
  end
end

describe("Anagram#are_antigrams?") do
  it("returns false if two words have any matching letters") do
    expect(Anagram.are_antigrams?("Cat", "Tab")).to(eq(false))
  end
end
