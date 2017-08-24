
require "./card.rb"

module Deck_of_cards

  class Deck < Card

    attr_reader :cards

    def initialize(input)
      @cards = input
    end

    def draw_card
      drawn_card = Card.new(@cards.first)
      @cards.delete(drawn_card.question)
      return drawn_card
    end

    def remaining_cards
      return @cards.length
    end

  end

end
