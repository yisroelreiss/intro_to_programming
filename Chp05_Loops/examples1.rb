
# practice_each.rb

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each { |name| puts name }

# practice_each1.rb

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end

# doubler.rb

def doubler(start)
  puts start * 2
end

doubler(2)
doubler(4)
doubler(8)

# doubler1.rb 

def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

doubler(2)

# fibonacci.rb

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)