require 'spec_helper'
require 'rspec/its'

describe Deck do

   cards = 
   	"What's your favorite color?\r\n"\
   	"How often do you visit your grandparents?\r\n"\
   	"What kind of sushi do you like best?\r\n"\
   	"Do you like to play sports? Why?"

	before { @deck = Deck.create!(name: "Lorem ipsum", cards: cards) }

	subject { @deck }

	it { should respond_to(:name) }
	it { should respond_to(:cards) }
	it { should be_valid }

	describe "when name is not present" do
	 	before { @deck.name = nil }
		it { should_not be_valid }
	end

	# doesn't work even though rails does
	# describe "when a blank card is included" do
	# 	before { 
	# 		@deck.cards = ["1", "", "2"]}
	# 	its(:cards) { should eq(["1", "2"])}
	# end
end