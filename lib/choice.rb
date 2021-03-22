class InvalidChoiceError < StandardError
end

class Choice
  include Comparable
  attr_reader :thing

  VALID_CHOICES = %w[rock paper scissors].freeze

  def initialize(thing)
    @thing = validate(thing)
  end

  def <=>(other)
    return nil unless other.instance_of?(Choice)
    return 0 if @thing == other.thing

    self_index  = VALID_CHOICES.index(@thing)
    VALID_CHOICES[self_index - 1] == other.thing ? 1 : -1
  end

  private

  def validate(thing)
    raise InvalidChoiceError unless VALID_CHOICES.include? thing

    thing
  end
end
