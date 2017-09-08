# Anagrams

#### _Epicodus Project in Ruby, September 8, 2017_

#### By Kelsey Langlois

## Description

_A Ruby script to evaluate whether two inputs are anagrams, palindromes, or antigrams. Two strings are anagrams if they share all the same letters, palindromes if the first string is the reverse of the second, and antigrams if they share no letters._

## Setup/Installation Requirements

* Clone this repository

## Specifications

#### ```Anagram.are_anagrams(string1, string2)```
* Method returns "These words are not anagrams." if two words are not anagrams.
  * Example Input: "Bob" "Potato"
  * Example Output: "These words are not anagrams."
* Method returns "These words are anagrams." if two words have the same letters.
  * Example Input: "ruby" "bury"
  * Example Output: "These words are anagrams."
* Method determines if two words are anagrams regardless of case.
  * Example Input: "Ruby" "BURY"
  * Example Output: "These words are anagrams."
* Method returns "These words form a palindrome." if two words form a palindrome.
  * Two inputs do not form a palindrome if first input does not equal reverse of second.
    * Example input: "cat" "act"
    * Example output: false
  * Two inputs forma a palindrome if first input equals the reverse of the second.
    * Example input: "diva" "avid"
    * Example output: true
  * Method ignores case when checking if word is a palindrome.
    * Example input: "Avid" "DIVA"
    * Example output: true
* Method returns an error if either input does not contain a vowel (including y).
  * Example Input: "Rrgh" "Argh"
  * Example Output: "Error: Inputs must consist of real words."
* Method returns "These words are antigrams (no letter matches)." if two words have no matching letters
  * Example Input: "Bob" "Cat"
  * Example Output: "These words are antigrams (no letter matches)."
* Method does all of the above for two inputs of one or more words.
  * Example Input: "eat desserts" "stressed tea"
  * Example Input: "These phrases are anagrams."
* Method returns an error if either input phrase has a word that has no vowels (including y).
  * Example Input: "eat brains" "ggggrrr arrrgh"
  * Example Output: "Error: Inputs must consist of real words."
* Method ignores punctuation and spaces when evaluating inputs as anagrams, antigrams, or palindrome.
  * Example Input: "Eat desserts!" "Stressed, tea."
  * Example Output: "These phrases are anagrams."

#### ```Anagram.new(string)```

* Method creates an Anagram object with input string saved as the original string.
  * Example Input: "desserts"
  * Example Output: original = "desserts"

## Support and contact details

_Please contact [kels.langlois@gmail.com](mailto:kels.langlois@gmail.com) with questions, comments, or issues._

## Technologies Used

* Ruby

### License

Copyright (c) 2017 **Kelsey Langlois**

*This software is licensed under the MIT license.*
