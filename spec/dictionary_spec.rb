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
end
