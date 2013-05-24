
class Parser

  # Example:
  # Parser.new(filename: 'flashcards_samples.txt',
  #            contents_class: Card,
  #            container_instance: deck_instance)
  def initialize(args)
    @filename = args[:filename]
    @contents_class = args[:contents_class]
    @container_instance = args[:container_instance]
  end

end
