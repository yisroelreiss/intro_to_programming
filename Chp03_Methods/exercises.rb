#problem 1
#greeting

def greeting(name)
    "Hello," + name + ". How are you doing?"
end

puts greeting("Yisroel")

#problem 2

1. x = 2 # => 2

2. puts x = 2 # => nil

3. p name = "Joe" # => "Joe"

4. four = "four" # => "four"

5. print something = "nothing" # => nil

#problem 3

def multiply(number1, number2)
  number1 * number2
end

puts multiply(4, 2)

#problem 4
# The following does not print anything to the screen because nothing is executed after the return command in a method.

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

#problem 5
#This still will return nothing but will print to the screen. The puts method does NOT return anything although it does output stuff to the screen.

def scream(words)
      words = words + "!!!!"
      puts words
    end

    scream("Yippeee")

#This print to scream !!!!! but outputs 'hi there'
def scream(words)
      words = words + "!!!!"
      puts words
      'hi there'
    end
    
       scream("Yippeee")
       
