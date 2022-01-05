require './lib/exhibit'
require './lib/patron'
require './lib/museum'

RSpec.describe Museum do
  describe 'Iteration 2' do
    before :each do
      @dmns = Museum.new("Denver Museum of Nature and Science")
    end

    it 'exists' do
      expect(@dmns).to be_an(Museum)
    end

    it 'has attributes' do
      expect(@dmns.name).to eq("Denver Museum of Nature and Science")
      expect(@dmns.exhibits).to eq([])
    end
  end
end
