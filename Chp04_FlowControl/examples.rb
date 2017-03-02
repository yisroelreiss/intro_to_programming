# conditional.rb

puts "Put in a number"
a = gets.chomp.to_i

if a == 3
    puts "a is 3"
elsif a == 4
    puts "a is 4"
else
    puts "a is neither 4, nor 4"
end

# # Example 1
# if x == 3
#     puts "x is 3"
# end

# # Example 2

# if x == 3
#     puts "x is 3"
# elsif x == 4
#     puts "x is 4"
# end

# # Example 3
# if x == 3
#   puts "x is 3"
# else
#     puts "x is NOT 3"
# end

# # Example 4
# if x == 3 then puts "x is 3" end
    
# case_statement.rb

a = 5

case a
when 5 
    puts "a is 5"
when 6
    puts "a is 6"
else 
    puts "a is neither 5, nor 6"
end

# case_statement2.rb <--refactored

a = 5

answer = case 
    when a == 5
        "a is 5"
    when a == 6
        "a is 6"
    else 
        "a is neithge 5, nor 6"
    end

puts answer

