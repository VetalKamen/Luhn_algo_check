class User
  attr_accessor :name, :age, :cards

  def initialize(name)
    self.name = name
    self.cards = []
  end

  def adult?
    age.to_i > 13
  end

  def add_card(card)
    cards << card
  end
end
