#!/usr/bin/env ruby

require 'rspec'
require 'dictionary'

describe("Dictionary") do
  it("returns false if word is not in system words file") do
    expect(Dictionary.is_word?("rrrrgh")).to(eq(false))
  end

  it("returns true if word is in system words file") do
    expect(Dictionary.is_word?("hello")).to(eq(true))
  end

  it("ignores case when checking word") do
    expect(Dictionary.is_word?("paris")).to(eq(true))
  end

  it("returns true if word is equal to a word in words file + 's'") do
    expect(Dictionary.is_word?("zombies")).to(eq(true))
  end

  it('returns true if word is equal to a word in words file + "ed"') do
    expect(Dictionary.is_word?("stressed")).to(eq(true))
  end
end
