require "./card.rb"
require "./deck.rb"

trivia_data = {
                       "What is the capital of Illinois?" => "Springfield",
                      "Is Africa a country or a continent?" => "Continent",
                      "Tug of war was once an Olympic event. True or false?" => "True"
                      }

deck = Deck_of_cards::Deck.new(trivia_data)

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end