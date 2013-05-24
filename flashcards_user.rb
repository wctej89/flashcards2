class UserInterface

end










deck = Deck.new

parser = Parser.new(filename: 'flashcard_samples.txt', contents_class: Card, 
                    container: deck)

parser.populate_container!
