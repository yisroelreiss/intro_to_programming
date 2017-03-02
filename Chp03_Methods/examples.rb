# say.rb

puts "hello"
puts "hi"
puts "how are you"
puts "I'm fine"

# say.rb refactored

def say(words)
    puts words
end

say("This is refactored version - should be same output as above")

say("hello")
say("hi")
say("how are you")
say("I'm fine")

# say.rb refactored2

def say(words)
  puts words + '.'    ## <= We only make the change here!
end

say("This is refactored version2 - should be same output as above with punctuation as end")

say("hello")
say("hi")
say("how are you")
say("I'm fine")

# say.rb refactored again

def say(words='hello')
  puts words + '.'
end

say("This is refactored version3 - should be same output as above in version2")

say()
say("hi")
say("how are you")
say("I'm fine")

#Proving methods are scoped at the method level

def some_method(number)
    number = 7 # this is implicitly returned by the method
end

a = 5
some_method(a)
puts a

# Example of a method that modifies its argument permanently
# mutate.rb


a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"

# Example of a method that does not mutate the caller
# mutate.rb


a = [1, 2, 3]

def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"

# Example of a method that does mutate the caller
# mutate.rb

a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"

# Example of a return
# return1.rb

def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

# Example of explicitely returning a value
#return2.rb


def add_three(number)
  return number + 3
end

returned_value = add_three(4)
puts returned_value

# return3.rb

def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value
