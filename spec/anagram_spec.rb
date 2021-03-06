#!/usr/bin/env ruby

require 'rspec'
require 'anagram'

describe("Anagram#initialize") do
  it("creates an Anagram object with input string saved as the original string") do
    anagram_test = Anagram.new("desserts")
    expect(anagram_test.original).to(eq("desserts"))
  end
end

describe("Anagram#anagram_of") do
  it("determines whether original string of Anagram object and inputted string are anagrams") do
    anagram_test = Anagram.new("Eat desserts!")
    expect(anagram_test.anagram_of("Stressed diva")).to(eq("These phrases are not anagrams."))
  end

  it("determines whether original string of Anagram object and inputted string are anagrams") do
    anagram_test = Anagram.new("Eat desserts!")
    expect(anagram_test.anagram_of("Stressed, Tea")).to(eq("These phrases are anagrams."))
  end

  it("determines whether original string of Anagram object and inputted string form a palindrome") do
    anagram_test = Anagram.new("desserts!")
    expect(anagram_test.anagram_of("Stressed,")).to(eq("These words are anagrams. They also form a palindrome."))
  end

  it("determines whether original string of Anagram object and inputted string are antigrams") do
    anagram_test = Anagram.new("Eat desserts!")
    expect(anagram_test.anagram_of("Pool zoo")).to(eq("These phrases are antigrams (no letter matches)."))
  end
end

describe("Anagram#get_anagrams") do
  it("returns empty array if original string is empty") do
    anagram_test = Anagram.new("")
    expect(anagram_test.get_anagrams).to(eq([""]))
  end

  it("returns array containing original string as is if original string is one character") do
    anagram_test = Anagram.new("a")
    expect(anagram_test.get_anagrams).to(eq(["a"]))
  end

  it("returns array containing all possibly combinations of original strings characters if string is longer than one character") do
    anagram_test = Anagram.new("abc")
    expect(anagram_test.get_anagrams).to(eq(["abc", "acb", "bac", "bca", "cab", "cba"]))
  end

  it("ignores case when finding anagrams") do
    anagram_test = Anagram.new("AbC")
    expect(anagram_test.get_anagrams).to(eq(["abc", "acb", "bac", "bca", "cab", "cba"]))
  end

  it("ignores non-alphabetical characters in original string when finding anagrams") do
    anagram_test = Anagram.new("I'd a")
    expect(anagram_test.get_anagrams).to(eq(["ida", "iad", "dia", "dai", "aid", "adi"]))
  end
end

describe("Anagram#get_anagram_words") do
  it("returns empty array if there are no anagrams of input that Dictionary.is_words recognizes as words") do
    anagram_test = Anagram.new("")
    expect(anagram_test.get_anagram_words).to(eq([]))
  end

  it("returns all single-word anagrams formed from input that Dictionary.is_words? recognizes as words") do
    anagram_test = Anagram.new("abc")
    expect(anagram_test.get_anagram_words).to(eq(["bac", "cab"]))
  end
end

# while this method is not in use anymore, I'm leaving it in to show that I did meet the original rules of the project before implementing the is_word? method in Dictionary.
describe("Anagram#is_word?") do
  it("returns false if input does not contain a vowel (including y).") do
    expect(Anagram.is_word?("Rrrgh")).to(eq(false))
  end

  it("returns true if input does contain a vowel (including y).") do
    expect(Anagram.is_word?("Hello")).to(eq(true))
  end
end

describe("Anagram#all_words?") do
  it("returns false if input is empty") do
    expect(Anagram.all_words?("")).to(eq(false))
  end

  it("returns false if any word in input is not a word") do
    expect(Anagram.all_words?("zombies like brains rrrrgh")).to(eq(false))
  end

  it("returns true if all words in input are words") do
    expect(Anagram.all_words?("zombies like brains")).to(eq(true))
  end
end

describe("Anagram#are_antigrams?") do
  it("returns false if two words have any matching letters") do
    expect(Anagram.are_antigrams?("Cat", "Tab")).to(eq(false))
  end

  it("returns true if two words have no matching letters") do
    expect(Anagram.are_antigrams?("Cat", "Bob")).to(eq(true))
  end
end

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

  it('returns if two words are antigrams (no matching letters)') do
    expect(Anagram.are_anagrams("Bob", "Cat")).to(eq("These words are antigrams (no letter matches)."))
  end

  it('does all of the above for two inputs of one or more words') do
    expect(Anagram.are_anagrams("eat desserts", "stressed tea")).to(eq("These phrases are anagrams."))
  end

  it('returns an error if either input phrase has a word that has no vowels (including y)') do
    expect(Anagram.are_anagrams("ggggrrr arrrgh", "eat brains")).to(eq("Error: Inputs must consist of real words."))
  end

  it('ignores punctuation and spaces when evaluating inputs as anagrams, antigrams, or palindromes') do
    expect(Anagram.are_anagrams("Eat desserts!", "Stressed, tea")).to(eq("These phrases are anagrams."))
    expect(Anagram.are_anagrams("This is a test!", "Word!")).to(eq("These phrases are antigrams (no letter matches)."))
    expect(Anagram.are_anagrams("Must sell at!", "...tallest sum.")).to(eq("These phrases are anagrams. They also form a palindrome."))
  end
end

describe("Anagram#anagram_of") do
  it("determines whether original string of Anagram object and inputted string are anagrams") do
    anagram_test = Anagram.new("Eat desserts!")
    expect(anagram_test.anagram_of("Stressed diva")).to(eq("These phrases are not anagrams."))
  end

  it("determines whether original string of Anagram object and inputted string are anagrams") do
    anagram_test = Anagram.new("Eat desserts!")
    expect(anagram_test.anagram_of("Stressed, Tea")).to(eq("These phrases are anagrams."))
  end

  it("determines whether original string of Anagram object and inputted string form a palindrome") do
    anagram_test = Anagram.new("desserts!")
    expect(anagram_test.anagram_of("Stressed,")).to(eq("These words are anagrams. They also form a palindrome."))
  end

  it("determines whether original string of Anagram object and inputted string are antigrams") do
    anagram_test = Anagram.new("Eat desserts!")
    expect(anagram_test.anagram_of("Pool zoo")).to(eq("These phrases are antigrams (no letter matches)."))
  end
end
