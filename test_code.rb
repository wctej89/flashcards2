require_relative 'card-deck-classes'
require_relative 'flashcards_parser'
require_relative 'flashcards_user'

# Test Card class

card1 = Card.new(definition: "Command to instantiate a new object of class Array", term: "Array.new")

p card1.inspect == "Command to instantiate a new object of class Array"
p card1.definition == "Command to instantiate a new object of class Array"
# p card1.term => should throw an error
p card1.match?("Array.new") == true
p card1.match?("foobar") == false

deck1 = Deck.new
p deck1.cards == 
