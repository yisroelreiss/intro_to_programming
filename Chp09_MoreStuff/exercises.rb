# Ex. 1 Write a program that checks if the sequence of characters "lab" exists 
# in the following strings. If it does exist, print out the word.

# "laboratory"
# "experiment"
# "Pans Labyrinth"
# "elaborate"
# "polar bear"

# <---Begin Answer
def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end


check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")




# Ex. 2 What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# <---Begin Answer

# The program does not print anything to the screen.  You need to put block.call to make it work.
# Without .call, you just get a proc returned.




# Ex. 3 What is exception handling and what problem does it solve?

# Exception handling is a way to deal with a possible error that could happen in your program. 
# It handles an error by changing what happens in your program without leaving the program entirely.




# Ex. 4 Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }




# Ex. 5 Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Give us the following error when we run it?
#block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

# <--- Answer
# You need to use a & symbol before the block.