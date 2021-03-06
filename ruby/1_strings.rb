#!/usr/bin/env ruby

################################################################################
# STRING BASICS
################################################################################

string = "This is a string, to the left is the variable that holds it"

#In Ruby, variables also act as objects. To keep it simple, this means you can
#call methods on these variables (as objects) using a "dot" operator.
#"dot" means "do"
print string.length #Print the length of the string.

#GOOGLE: wiki escape character
print "\n" #Prints a new line 

print '\n' #Literally prints a backslash "\" and the letter n

print "\n" #Prints a new line

#Notice that backslash "\" escapes an backslash in double quotes,
#so that it prints a literal backslash, instead of interpreting "\n" as a new line:
puts "The puts command prints a new line automatically without having to write \\n!"

puts "This will print two newlines. One escaped, one resulting from the puts command.\n"

#How many 'i' characters are in the string?
#THINK: Why is the "i" character enclosed in quotes?
#ANSWER: Because it's a string, not a variable.
puts string.count('i')

i = "this is a variable called 'i'"

puts i

#THINK: Why do I have to escape single quotes here?
string = 'Change the value of the variable called \'string\''

puts string.empty?

################################################################################
# STRINGS and DATA STRUCTURES
################################################################################

this_is_an_array = ['first value', 'second value', 'third value']

#We count starting from zero in Computer Science:
#The plus sign "+" means "concatenate".
#GOOGLE: wiki concatenation
puts "Arrays keep their values in order, starting from zero, from left to right:"
puts "this is the first value of this_is_an_array: " + this_is_an_array[0]
puts "this is the second value of this_is_an_array: " + this_is_an_array[1]
puts "this is the third value of this_is_an_array: " + this_is_an_array[2]

#`each` is a function that can be performed on objects to loop through the
#values that they contain, one at a time.
#`element` is an alias for the value in the array that `each` is currently pointing to.
#The pipes "|" around `element` indicate that "this is what I want to call the alias"
#Let's print the value of the alias to the screen with the puts command
this_is_an_array.each { |element| 
  puts element
}

this_is_a_hash = {"key1" => "value1", "key3" => "value3", "key2" => "value2"}

puts this_is_a_hash["key1"]

this_is_an_array.each { |array_item|
  print array_item
}

puts 'I put the hash keys in this order: "key1", "key3", "key2"'
puts '...but they print in this order when I do an `each` on the hash:'

#Here the first alias variable `key` refers to the hash key, and `value` refers
#to the hash value of the key.
#
#The `#{}` notation allows us to print the alias variable `key` within a string.
#Without such notation, it would just literally print the word "key". We want the
#value of the variable--not its name:
this_is_a_hash.each {|key,value|
  puts "This is a hash key: #{key} " + "with a value of: " + this_is_a_hash[key]
}

puts "Hashes, unlike arrays, are not numerically-indexed. You retrieve values via"
puts "string keys instead of retrieving by numeric indeces."

print 'This is the value of this_is_a_hash[\'key1\']:'
puts this_is_a_hash['key1']

also_a_hash = {
  'key1' => 'value1',
  'key3' => 'value3',
  'key2' => 'value2',
}