require_relative 'card-deck-classes'
require_relative 'flashcards_parser'
require_relative 'flashcards_user'

# Test Card class

card1 = Card.new(definition: "Command to instantiate a new object of class Array", term: "Array.new")

p card1
p card1.definition
p card1.term
p card1.match?("Array.new")
p card1.match?("foobar")

