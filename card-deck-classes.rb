class Card
  attr_reader :definition

  def initialize(arg)
    @definition = arg[:definition]
    @term = arg[:term]
  end

  def match?(guess)
    guess.downcase == @term.downcase
  end

  def to_s
    "#{@definition}"
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

  def insert!(card)
    @cards << card
  end
end
