#!/usr/bin/env ruby

require 'rspec'
require 'anagrams'

describe('Anagrams#are_anagrams') do
  it('returns "These words are not anagrams." if two words are not anagrams') do
    expect(Anagrams.are_anagrams("bob", "potato")).to(eq("These words are not anagrams."))
  end
end
