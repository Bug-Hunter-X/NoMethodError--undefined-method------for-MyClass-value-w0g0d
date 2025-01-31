```ruby
# Solution 1: Using attr_accessor
class MyClass
  attr_accessor :value

  def initialize(value)
    @value = value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10
my_object.value = 20 # This works now
puts my_object.value # Output: 20


# Solution 2: Defining a setter method explicitly
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10
my_object.value = 20 # This also works now
puts my_object.value # Output: 20
```