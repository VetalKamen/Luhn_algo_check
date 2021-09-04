class User
  attr_accessor :name, :age

  def initialize(name)
    self.name = name
  end

  def introduce
    puts "Hi! My name is #{name}"
  end
end
