
class Parser

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
      self.container.insert!(Card.new(definition: definition, term: term))
    end
  end

end
