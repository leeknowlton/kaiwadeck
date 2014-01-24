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

    used_to_deck =
      "What club did you use to belong to in junior high school?\r\n"\
      "Are there any foods you didn't used to like that you do now?\r\n"\
      "What did you use to do in elementary school after school?"

    User.create!(email: "lee@sample.com", password: "password", password_confirmation: "password")
    Deck.create!(name: "Easy", cards: easy_cards, user_id: 0)
    Deck.create!(name: "Medium", cards: medium_cards, user_id: 0)
    Deck.create!(name: "Hard", cards: hard_cards, user_id: 0)
    Deck.create!(name: "Sample User Deck", cards: used_to_deck, user_id: 1)
  end
end