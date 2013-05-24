#Code written by Matt Barackman, T.J. Singh, Lloyd Taylor and William Bendix


require_relative 'card-deck-classes'
require_relative 'flashcards_parser'


class UserInterface

  NUMBER_OF_GUESSES = 3



  def self.run(deck)

    puts "Welcome to Ruby Flash Cards. To play, just enter the correct term for each definition.  Ready?  Go!"
    
    until deck.empty?
      card = deck.next
      puts card.definition
      NUMBER_OF_GUESSES.times do |x|
        print 'Guess: '
        guess = gets.chomp
        if card.match?(guess)
          puts 'Correct!'
          break
        elsif x == NUMBER_OF_GUESSES - 1
          puts "Incorrect. The answer is #{card.term}"
        else
          puts "Incorrect"
        end
      end
    end
  
  end
end










deck = Deck.new


parser = Parser.new(filename: 'flashcard_samples.txt', contents_class: Card, 
                    container: deck)

parser.populate_container!
deck.shuffle!
UserInterface.run(deck)

