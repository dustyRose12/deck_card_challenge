
require "./card.rb"

module Deck_of_cards

  class Deck < Card

    attr_reader :cards

    def initialize(input)
      @cards = input
    end

    def draw_card
      @drawn_card = Card.new(@cards.first)
      @cards.delete(@drawn_card.question)
      return @drawn_card
    end

    def remaining_cards
      return @cards.length
    end

    # def multiple_choice_answers
    #   multiple_choice_answers = []
      
    #   (@cards.length).times do 
    #     multiple_choice_answers << (@cards.draw_card).answer
    #   end
    #   return multiple_choice_answers
    # end

  end

end
