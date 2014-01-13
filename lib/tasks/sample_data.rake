namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Deck.create!(name: "Easy")
    Deck.create!(name: "Medium")
    Deck.create!(name: "Hard")

    10.times do |n|
      Card.create!(text: "Test Card " + n.to_s,
                   deck_id: 1)
    end

    10.times do |n|
      Card.create!(text: "Test Card " + n.to_s,
                   deck_id: 2)
    end

    10.times do |n|
      Card.create!(text: "Test Card " + n.to_s,
                   deck_id: 3)
    end

  end
end