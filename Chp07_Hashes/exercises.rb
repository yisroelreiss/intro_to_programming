# Ex. 1 Given a hash of family members, with keys as the title and an array of 
# names as the values, use Ruby's built-in select method to gather only 
# immediate family members' names into a new array.

# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          

# <--- Begin Answer

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

# this is to check that immediate family is correct
p immediate_family
# this is to only return the values of immediate family

arr = immediate_family.values
p arr

# flatten ---> this makes everything be in one array
arr = immediate_family.values.flatten
p arr


# Ex. 2 Look at Ruby's merge method. Notice that it has two versions. What is 
# the difference between merge and merge!? Write a program that 
# uses both and illustrate the differences

# < --- Begin Answer
# Merge! modifies the hash permanently.

daddy = {name: "Eric"}
weight = {weight: "190 kg"}
puts daddy.merge(weight)
puts daddy                  # => {:name=>"whiskers"}
puts weight               # => {:weight=>"10 lbs"}
puts daddy.merge!(weight)
puts daddy                  # => {:name=>"whiskers", :weight=>"10 lbs"}
puts weight               # => {:weight=>"10 lbs"}



# Ex 3 Using some of Ruby's built-in Hash methods, write a program that 
# loops through a hash and prints all of the keys. Then write a program 
# that does the same thing except printing the values. Finally, write a 
# program that prints both.

# This is my solution

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          
family.each do |key, value|
  puts "This is a key: #{key}."
end

family.each do |key, value|
  puts "This is a value: #{value}"
end

family.each do |key, value|
  puts "This both a key: #{key} and a value: #{value}"
end

# This is Launch School's solution.

opposites = {positive: "negative", up: "down", right: "left"}

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }

p opposites.keys
p opposites.values



# Ex. 4 - Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
# < --- Begin Answer
person[:name]



# Ex. 5 What method could you use to find out if a Hash contains a specific value in it? 
# Write a program to demonstrate this use.

# < --- Begin Answer
has_value?

opposites = {positive: "negative", up: "down", right: "left"}

if opposites.has_value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end



# Ex. 6 Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
# Write a program that prints out groups of words that are anagrams. 
# Anagrams are words that have the same exact letters in them but in a 
# different order. Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

#pseudocode
# 1. iterate over the words array
# 2. turn each word into alphabetical order mode=>demo
# 3. if they key exists, append to the key's list
# 4 else, create  a new key, with this word in the list.


result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  p v
end



# Ex. 7 Given the following code...

# x = "hi there"
# my_hash = {x: "some value"}
# my_hash2 = {x => "some value"}

# What's the difference between the two hashes that were created?

# <--- Answer Begin...

# {x: "some value"} ==> this means that we are using a KEY called x
# {x => "some value"} ==> this means that we are using a variable x as the key



# 8 If you see this error, what do you suspect is the most likely problem?

# NoMethodError: undefined method `keys' for Array

# A. We're missing keys in an array variable.
# B. There is no method called keys for Array objects.
# C. keys is an Array object, but it hasn't been defined yet.
# D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.

# <--- Answer
# B