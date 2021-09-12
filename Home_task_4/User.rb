class User
  attr_accessor :name, :age, :cards

  def initialize(name, age)
    self.name = name
    self.age = age
    self.cards = []
  end

  def introduce
    puts "Hi! My name is #{name} and I'm #{age} years old"
  end

  def adult?
    age > 13
  end

  def add_card(card)
    cards << card
  end
end
