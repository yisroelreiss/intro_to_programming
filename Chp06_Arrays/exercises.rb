# Ex. 1

arr = [1,3,5,7,9,11]
number = 3

if arr.include?(number)
        puts "#{number} is in the array"
    end

# or

arr.each do |num|
    if num == number
        puts "#{number} is in the array"
    end
end



# Ex. 2 What will the following programs return? What is value of arr after each?
# 1. arr = ["b", "a"]
#   arr = arr.product(Array(1..3))
#   arr.first.delete(arr.first.last)
# 2. arr = ["b", "a"]
#   arr = arr.product([Array(1..3)])
#   arr.first.delete(arr.first.last)

# < --- My Notes
# Array(1..3) ==> This makes a new Array [1,2,3]
# .product = will put together two arrays into every possible permutation
# .delete removes whatever is in the arugement from the array
# .first deletes the first index part of the array and returns it!
# .first.last deletes the last part of the first index in the array
# for the second question, this [[1, 2, 3]] is an array with one element, which is another array with three elements.
# End of My Notes--->

# Answer
# 1. returns 1
#     arr =  [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

# 2. returns [1, 2, 3]
#     arr = [["b"], ["a", [1, 2, 3]]]



# Ex. 3 How do you print the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]
print arr.last.first
print arr[1][0]



# Ex. 4 What does each method return in the following example?

# arr = [15, 7, 18, 5, 12, 8, 5, 1]
# 1. arr.index(5)
# .index looks for the first occurence of that number in the index, and returns that number.
# 2. arr.index[5]
# This returns an error because it is wrong.
# 3. arr[5]
# This is the value at the 5th position of the index, which is 8



# Ex. 5 What is the value of a, b, and c in the following program?
# string = "Welcome to America!"
# a = string[6]
# b = string[11]
# c = string[19]

# <--- Answer
# a = "e"
# b = "A"
# c = nil
# ---->



# Ex. 6 How do you fix the following code:
# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'

# < --- Answer
# In order to acces the value 'margaret', you need to use index value positions like names[3]
# --- >



# Ex. 7 Write a program that iterates over an array and builds a new array 
# that is the result of incrementing each value in the original array by a 
# value of 2. You should have two arrays at the end of this program, The 
# original array and the new array you've created. Print both arrays to 
# the screen using the p method instead of puts.

arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr









