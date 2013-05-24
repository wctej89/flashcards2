require_relative 'card-deck-classes'

class Parser

  attr_reader :contents_class, :container
  # Example:
  # Parser.new(filename: 'flashcards_samples.txt',
  #            contents_class: Card,
  #            container_instance: deck_instance)
  def initialize(args)
    @filename = args[:filename]
    @contents_class = args[:contents_class] || nil
    @container = args[:container] || nil
  end

  def populate_container!
    File.readlines(@filename, "\n\n").each do |linepair|
      definition, term = linepair.split("\n")
      new_content_instance = self.contents_class.new(definition: definition, term: term)
      self.container.insert!(new_content_instance)
    end
  end

end

