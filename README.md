# Anagrams

#### _Epicodus Project in Ruby, September 8, 2017_

#### By Kelsey Langlois

## Description

_A Ruby script to evaluate whether two inputs are anagrams, palindromes, or antigrams. Two strings are anagrams if they share all the same letters, palindromes if the first string is the reverse of the second, and antigrams if they share no letters._

## Setup/Installation Requirements

* Clone this repository
* To run an anagram tester that determines whether two inputs are anagrams, palindromes, or antigrams:
  * In the root directory, run ```$ ruby lib/test_anagrams.rb```

## Specifications
### ```Anagram```

_The main class for determining if two strings are anagrams, palindromes, or antigrams. Can create a specific instance with a set original string, or use class method which takes two strings and checks them._

#### Class Methods
#### ```are_anagrams(string1, string2)```
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
* Method returns an error if either input is not a word (as determined by ```Dictionary.is_word?```).
  * Example Input: "Rrgh" "Argh"
  * Example Output: "Error: Inputs must consist of real words."
* Method returns "These words are antigrams (no letter matches)." if two words have no matching letters
  * Example Input: "Bob" "Cat"
  * Example Output: "These words are antigrams (no letter matches)."
* Method does all of the above for two inputs of one or more words.
  * Example Input: "eat desserts" "stressed tea"
  * Example Input: "These phrases are anagrams."
* Method returns an error if either input phrase has a word that is not a word (as determined by ```Dictionary.is_word?```).
  * Example Input: "eat brains" "ggggrrr arrrgh"
  * Example Output: "Error: Inputs must consist of real words."
* Method ignores punctuation and spaces when evaluating inputs as anagrams, antigrams, or palindrome.
  * Example Input: "Eat desserts!" "Stressed, tea."
  * Example Output: "These phrases are anagrams."

#### ```new(string)```

* Method creates an Anagram object with input string saved as the original string.
  * Example Input: "desserts"
  * Example Output: original = "desserts"

#### Instance Methods
#### ```anagram_of(string)```

* Method determines whether original string of Anagram object and inputted string are anagrams, palindromes, or antigrams, following all specifications listed for ```are_anagrams```.
  * Example Input: a has orginal string = "eat desserts", input string = "stressed tea"
  * Example Output: "These phrases are anagrams."

#### ```get_anagrams```

* Method returns array with empty string if original string is empty.
  * Example Input: ""
  * Example Output: [""]
* Method returns array containing original string as is if original string is one character.
  * Example Input: "a"
  * Example Output: ["a"]
* Method returns array containing all possibly combinations of original strings characters if string is longer than one character.
  * Example Input: "abc"
  * Example Output: ["abc", "acb", "bac", "bca", "cab", "cba"]
* Method ignores non-alphabetical characters (including spaces) in original string when finding anagrams.
  * Example Input: "I'd a"
  * Example Output: ["ida", "iad", "dia", "dai", "aid", "adi"]

### ```Dictionary```

_Custom Dictionary class for determining if the words given to Anagrams as input are words. Currently has a few very basic rules to account for variations on words existing in the file._

#### Class Methods
#### ```is_word?```

* Method returns false if word is an empty string.
  * Example Input: ""
  * Example Output: false
* Method returns false if word is not in words file.
  * Example Input: "rrrrrrgh"
  * Example Output: false
* Method returns true if word is in words file.
  * Example Input: "hello"
  * Example Output: true
* Method ignores case when checking word.
  * Example Input: "paris"
  * Example Output: true
* Method returns true if word is equal to a word in words file + "s".
  * Example Input: "zombies"
  * Example Output: true
* Method returns true if word is equal to a word in words file + "ed".
  * Example Input: "stressed"
  * Example Output: true
* Method returns true if word is equal to a word in words file + "est".
  * Example Input: "tallest"
  * Example Output: true

### ```Palindrome```

_Class that handles determining whether inputs are Palindromes. Code adapted from my earlier Epicodus exercise [here](https://github.com/langlk/palindromes)._

#### Class Methods
#### ```are_palindrome?(string1, string2)```

* Method returns false if first input does not equal reverse of second.
  * Example Input: "cat", "act"
  * Example Output: false
* Method returns true if first input equals the reverse of the second.
  * Example Input: "diva", "avid"
  * Example Output: true
* Method ignores case when checking if word is a palindrome
  * Example Input: "Diva" "AVID"
  * Example Output: true

## Support and contact details

_Please contact [kels.langlois@gmail.com](mailto:kels.langlois@gmail.com) with questions, comments, or issues._

## Technologies Used

* Ruby

### License

Copyright (c) 2017 **Kelsey Langlois**

*This software is licensed under the MIT license.*
