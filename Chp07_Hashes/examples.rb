# iterating_over_hashes.rb

person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

# optional_parameters.rb

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"})
greeting("Bob", age: 62, city: "New York City")


# Examples of using data (not symbols) for our keys

# irb :001 > {"height" => "6 ft"}     # string as key
# => {"height"=>"6 ft"}
# irb :002 > {["height"] => "6 ft"}   # array as key
# => {["height"]=>"6 ft"}
# irb :003 > {1 => "one"}             # integer as key
# => {1=>"one"}
# irb :004 > {45.324 => "forty-five point something"}  # float as key
# => {45.324=>"forty-five point something"}
# irb :005 > {{key: "key"} => "hash as a key"}  # hash as key
# => {{:key=>"key"}=>"hash as a key"}

# Example of Has.key? method

# irb :001 > name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}
# => {"Bob"=>42, "Steve"=>31, "Joe"=>19}
# irb :002 > name_and_age.has_key?("Steve")
# => true
# irb :003 > name_and_age.has_key?("Larry")
# => false

# Example of select method

# irb :004 > name_and_age.select { |k,v| k == "Bob" }
# => {"Bob"=>42}
# irb :005 > name_and_age.select { |k,v| (k == "Bob") || (v == 19) }
# => {"Bob"=>42, "Joe"=>19}

# Example of fetch method

# irb :006 > name_and_age.fetch("Steve")
# => 31
# irb :007 > name_and_age.fetch("Larry")
# => KeyError: key not found: "Larry"
#      from (irb):32:in `fetch'
#      from (irb):32
#      from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
# irb :008 > name_and_age.fetch("Larry", "Larry isn't in this hash")
# => "Larry isn't in this hash"

# Example of to_a method

# irb :009 > name_and_age.to_a
# => [["Bob", 42], ["Steve", 31], ["Joe", 19]]
# irb :010 > name_and_age
# => {"Bob"=>42, "Steve"=>31, "Joe"=>19}

# Keys and Values method

# irb :0011 > name_and_age.keys
# => ["Bob", "Steve", "Joe"]
# irb :0012 > name_and_age.values
# => [42, 31, 19]

