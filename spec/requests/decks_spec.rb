require 'spec_helper'

describe "Decks" do
  describe "GET /decks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get decks_path
      expect(response.status).to be(200)
    end
  end
end
