# Arrays.rb

array = [1, 'Bob', 4.33, 'another string']

puts array.first
puts array.last
puts array[3]

# takes the last item off of an array permanently
array.pop
puts array

#  add item to the array permanently
array.push("another string")
puts array

# or this also works to add an item to the array permanently 

array << "another string"
puts array

# The map method iterates over an array applying a block to each element of the array
# and returns a new array with those results
# Collect and map do the same thing.

a = [1, 2, 3, 4]
a.map { |num| puts num**2 }
a.collect { |num| puts num**2 }
puts a

# The delete_at method can be helpful if you'd like to eliminate 
# the value at a certain index from your array.

a.delete_at(1)
puts a

my_pets = ["cat", "dog", "bird", "cat", "snake"]
puts my_pets
my_pets.delete("cat")
puts my_pets

# the uniq method iterates through an array, 
# deletes any duplicate values that exist, then returns the result as a new array.

b = [1, 1, 2, 2, 3, 3, 4, 4]
puts b
puts b.uniq
puts b 

# If you add the bang operator (!) to this method, 
# you can perform the uniq function destructively. 

b = [1, 1, 2, 2, 3, 3, 4, 4]
puts b
puts b.uniq!
puts b 

# The select method selects all of the numbers that are greater than 4 and returns them in an array.

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts numbers
puts numbers.select { |number| number > 4 }
puts numbers

# Mutate vs Not Mutate

def mutate(arr)
  arr.pop
end

def not_mutate(arr)
  arr.select { |i| i > 3 }
end

a = [1, 2, 3, 4, 5, 6]
mutate(a)
not_mutate(a)

puts

# Nested Arrays

teams = [['Joe', 'Steve'], ['Frank', 'Molly'], ['Dan', 'Sara']]
puts teams
puts teams[1]

# The pop method takes the last item off the list. 
# The unshift method adds the arguments that you specify to the front of the list.

a = [1, 2, 3]
b = [2, 3, 4]
a == b # will return false
b.unshift(1)
a == b # will return true

# include?

a = [1, 2, 3, 4, 5]

irb: 002 > a.include?(3) # returns true
irb: 003 > a.include?(6) # returns false

# Flatten The flatten method can be used to take an array that contains nested arrays 
# and create a one-dimensional array.

irb: 001 > a = [1, 2, [3, 4, 5], [6, 7]] # returns [1, 2, [3, 4, 5], [6, 7]]
irb: 002 > a.flatten #returns [1, 2, 3, 4, 5, 6, 7]

# each_index 

a = [1, 2, 3, 4, 5]
a.each_index { |i| puts "This is index #{i}" }

# each_with_index Another useful method that works in a similar way to each_index is each_with_index.

a = [1, 2, 3, 4, 5]

a.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }

# sort  The sort method is a handy way to order an array.

a = [5, 3, 8, 2, 4, 1]
puts a # => [5, 3, 8, 2, 4, 1]
a.sort # => [1, 2, 3, 4, 5, 8]

# product The product method can be used to combine two arrays in an interesting way

[1, 2, 3].product([4, 5])
#returns [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]

# Each method

a = [1, 2, 3]
a.each { |e| puts e }

a = [1, 2, 3]
a.each { |e| puts e + 2 } # returns => [1, 2, 3]

# Map method = map also works on objects that allow for iteration. 
# Like each but differs from each in the returned value. 
# map creates and returns a new array containing the values returned by the block. 

a = [1, 2, 3]
a.map { |x| x**2 } # returns => [1, 4, 9]

