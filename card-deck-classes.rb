class Card
  attr_reader :definition

  def intialize(arg)
    @definition = arg[:definition]
    @term = arg[:term]
  end

  def match?(guess)
    guess == self.term
  end

end

class Deck
  
  attr_reader :cards
  def initialize
    @cards = []
  end

  def shuffle!
    @cards.shuffle
  end

  def next
    @cards.pop
  end

  def empty?
    @cards.length == 0
  end
end
