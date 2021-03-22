class Computer < Player
    def initialize(name = "Computer")
        super(name)
    end

    def make_choice
        super(Choice::VALID_CHOICES.sample)
    end
end


