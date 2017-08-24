module Deck_of_cards

  class Card

    attr_reader :question, :answer

    def initialize(input)
      @question = input[0]
      @answer = input[1]
    end

  end

end


