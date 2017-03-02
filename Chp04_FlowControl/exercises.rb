# Ex 1
# Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.

(32 * 4) >= 129

# This evaluates to false because 32*4 equals 128, so it is less than 129.

false != !true

# This evaluates to false.  !true means false, so the expression is saying that false does not equal to false.  
# This is false because false does equal false

true == 4

#These two do not equal each other, even though each side would evaluate to false by itself.

false == (847 == '874')

# 847 is an integer and '874' is a string, so they don't equal each other. 
# Therefore, the expression is saying false does equal false, which is true.

(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false

# We just need to have one thing in the above be true in order for it to be true because it uses ||.
# 328/4 equals 82, so the whole expression evaluates to true.


# Ex 2
def caps(string)
    if string.length > 10
        string.upcase
    else
        string
    end
end

puts caps("Eric")
puts caps("Eric F. Reiss")


# Ex 3
puts "Choose a number between 0 and 100"
number = gets.chomp.to_i

if number < 0
    puts "You can't enter a negative number!"
elsif number <=50 
    puts "#{number} is between 0 and 50"
elsif number <=100
    puts "#{number} is between 51 and 100"
else
    puts "#{number} is above 100"
end


# Ex 4
1. '4' == 4 ? puts("TRUE") : puts("FALSE")

# Will print FALSE

2. x = 2
   if ((x * 3) / 2) == (4 + 4 - x - 3)
     puts "Did you get it right?"
   else
     puts "Did you?"
   end

# Print "Did you get it right?"


3. y = 9
   x = 10
   if (x + 1) <= (y)
     puts "Alright."
   elsif (x + 1) >= (y)
     puts "Alright now!"
   elsif (y + 1) == x
     puts "ALRIGHT NOW!"
   else
     puts "Alrighty!"
   end
   
# Print "Alright now!"

# Ex. 4

# evaluate_num_revisited.rb

def evaluate_num(num)
  if num < 0
    puts "You can't enter a negative num!"
  elsif num <= 50
    puts "#{num} is between 0 and 50"
  elsif num <= 100
    puts "#{num} is between 51 and 100"
  else
    puts "#{num} is above 100"
  end
end

def evaluate_case1_num(num)
  case
  when num < 0
    puts "You can't enter a negative num!"
  when num <= 50
    puts "#{num} is between 0 and 50"
  when num <= 100
    puts "#{num} is between 51 and 100"
  else
    puts "#{num} is above 100"
  end
end

def evaluate_case2_num(num)
  case num
  when 0..50
    puts "#{num} is between 0 and 50"
  when 51..100
    puts "#{num} is between 51 and 100"
  else
    if num < 0
      puts "You can't enter a negative num!"
    else
      puts "#{num} is above 100"
    end
  end
end

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

evaluate_num(number)
evaluate_case1_num(number)
evaluate_case2_num(number)

# Ex. 6

# You need two ends at the end of the code, one for the if else statement, and one
# for the method.