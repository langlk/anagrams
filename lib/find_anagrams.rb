#!/usr/bin/env ruby

require_relative 'anagrams'

puts "Welcome to Kelsey's anagram tester!"
loop do
  puts "Please enter the first word or phrase, or q to quit:"
  string1 = gets.chomp
  if string1 == "q"
    break
  end
  puts "Please enter the second word or phrase, or q to quit:"
  string2 = gets.chomp
  if string2 == "q"
    break
  end
  puts Anagram.are_anagrams(string1, string2) + " Test again? (y/n)"
  test_again = gets.chomp
  if test_again == "n"
    puts "Goodbye!"
    break
  end
end
