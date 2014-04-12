# To check results
# At comand line in same directory, run with ruby: "ruby maths.rb"
# Start IRB in same directory and then type: "require './maths'" and press enter to load the file into
# the IRB session

 # Trivial class that implements some binary math operations explicitly
 class BinaryOperations
  def self.add(x, y)
    x + y
  end

  def self.subtract(x, y)
    x - y
  end

  def self.multiply(x, y)
    x * y
  end
end

# Class that provides support for ANY binary operation as block method
class BlockBinaryOperations
  #block defines operation to be performed on x and y
  def self.perform(x, y)
    # if block is supplied yield with two params, otherwise just do addition
    if block_given?
      yield(x, y)
    else
      x + y
    end
  end
end

# Examples of how to call methods in the non-blockified BinaryOperations class
puts "Non-block: #{BinaryOperations.add(2, 5)}"
puts "Non-block: #{BinaryOperations.subtract(2, 5)}"


# call BlockBinaryOperations.perform with addition defined in the block.
result = BlockBinaryOperations.perform(3, 5) do |x, y|
  x + y
end
puts "With block: #{result}"

# Pass another block to BlockBinaryOperations.perform with code that isn't defined there.
# (in this case, passing in code that divides x and y)
BlockBinaryOperations.perform(3, 5) do |x, y|
  x / y
end



