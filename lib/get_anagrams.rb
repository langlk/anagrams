#!/usr/bin/env ruby

require_relative 'anagram'

puts "Welcome to Kelsey's anagram generator!"
loop do
  puts "Please enter a string to generate anagrams from, or q to quit:"
  anagram_string = gets.chomp
  if anagram_string == "q"
    break
  end
  anagram = Anagram.new(anagram_string)
  puts "Generate all anagrams (a), or only words (w) (q to quit)?"
  action = gets.chomp
  until (action == "a") | (action == "w") | (action == "q") do
    puts "Please enter a valid action (a, w, or q)."
    action = gets.chomp
  end
  if action == "a"
    puts anagram.get_anagrams
  elsif action == "w"
    puts anagram.get_anagram_words
  elsif action == "q"
    break
  end
  puts "Generate another anagram? (y/n)"
  another_round = gets.chomp
  if another_round == "n"
    puts "Goodbye!"
    break
  end
end
