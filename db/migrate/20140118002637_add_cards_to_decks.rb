class AddCardsToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :cards, :string
  end
end
