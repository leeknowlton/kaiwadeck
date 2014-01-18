namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    easy_cards = 
      "What's your favorite color?\r\n"\
      "How often do you visit your grandparents?\r\n"\
      "What kind of sushi do you like best?\r\n"\
      "Do you like to play sports? Why?"

    medium_cards = 
      "What club did you use to belong to when you were in high school?\r\n"\
      "What is your favorite subject? Why?\r\n"\
      "What do you do in your free time?\r\n"\
      "Have you ever done any extreme sports? Which ones?\r\n"\
      "What did you do last weekend? How was it?"
    

    hard_cards = 
      "Who do you look up to? Why?\r\n"\
      "Do you think the Nobel Peace Prize is fair?\r\n"\
      "What's your favorite movie? What makes it so memorable for you?"

    Deck.create!(name: "Easy", cards: easy_cards)
    Deck.create!(name: "Medium", cards: medium_cards)
    Deck.create!(name: "Hard", cards: hard_cards)
  end
end