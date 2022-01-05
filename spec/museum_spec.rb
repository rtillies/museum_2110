require './lib/exhibit'
require './lib/patron'
require './lib/museum'

RSpec.describe Museum do
  describe 'Iteration 2' do
    before :each do
      @dmns = Museum.new("Denver Museum of Nature and Science")
      @gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
      @dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
      @imax = Exhibit.new({name: "IMAX",cost: 15})
    end

    it 'exists' do
      expect(@dmns).to be_an(Museum)
    end

    it 'has attributes' do
      expect(@dmns.name).to eq("Denver Museum of Nature and Science")
      expect(@dmns.exhibits).to eq([])
    end

    it '#add_exhibit' do
      @dmns.add_exhibit(@gems_and_minerals)
      @dmns.add_exhibit(@dead_sea_scrolls)
      @dmns.add_exhibit(@imax)

      expect(@dmns.exhibits).to eq([@gems_and_minerals, @dead_sea_scrolls, @imax])
    end

    # it '#recommend_exhibits' do
    #
    # end
  end
end