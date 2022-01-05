require './lib/exhibit'
require './lib/patron'

RSpec.describe Exhibit do
  describe 'Iteration 1' do
    before :each do
      @exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
    end

    it 'exists' do
      expect(@exhibit).to be_an(Exhibit)
    end

    it 'has attributes' do
      expect(@exhibit.name).to eq("Gems and Minerals")
      expect(@exhibit.cost).to eq(0)
    end
  end
end
