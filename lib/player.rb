class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

  def make_choice(thing)
    @choice = Choice.new(thing)
  end
end
