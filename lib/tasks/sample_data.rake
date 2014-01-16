namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Deck.create!(name: "Easy")
    Deck.create!(name: "Medium")
    Deck.create!(name: "Hard")

    easy_cards = [
      "What's your favorite color?",
      "How often do you visit your grandparents?",
      "What kind of sushi do you like best?",
      "Do you like to play sports? Why?"
    ]

    medium_cards = [
      "What club did you use to belong to when you were in high school?",
      "What is your favorite subject? Why?",
      "What do you do in your free time?",
      "Have you ever done any extreme sports? Which ones?",
      "What did you do last weekend? How was it?"
    ]

    hard_cards = [
      "Who do you look up to? Why?",
      "Do you think the Nobel Peace Prize is fair?",
      "What's your favorite movie? What makes it so memorable for you?"
    ]

    easy_cards.length.times do |n|
      Card.create!(text: easy_cards[n],
                   deck_id: 1)
    end

    medium_cards.length.times do |n|
      Card.create!(text: medium_cards[n],
                   deck_id: 2)
    end

    hard_cards.length.times do |n|
      Card.create!(text: hard_cards[n],
                   deck_id: 3)
    end

  end
end