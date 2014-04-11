 # Trivial class that implements some binary math operations explicitly
 class BinaryOperations
  def self.add(x,y)
    x + y
  end

  def self.subtract(x, y)
    x - y
  end

  def self.multiply(x, y)
    x * y
  end
end

# Class that provides support for binary operations as block method
class BlockBinaryOperations
  def self.perform(x, y, &block)
    yield(x, y)
  end
end

puts "Non-block: #{BinaryOperations.add(2, 5)}"

result = BlockBinaryOperations.perform(3, 5) do |x, y|
  x + y
end
puts "With block: #{result}"
