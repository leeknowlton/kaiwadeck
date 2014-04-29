class ChangeCardsToText < ActiveRecord::Migration
  def change
	 change_column :decks, :cards, :text, :limit => nil
  end
end
