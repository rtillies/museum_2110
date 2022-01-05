require "pry"
require "patron"

class Museum
  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    patron_exhibits = []
    patron.interests.each do |interest|
      @exhibits.each do |exhibit|
        # binding.pry
        if interest == exhibit.name
          patron_exhibits << exhibit
        end
      end
    end
    patron_exhibits
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    exhibit_hash = Hash.new
    @exhibits.each do |exhibit|
      exhibit_hash[exhibit] = []
      @patrons.each do |patron|
        if patron.interests.include?(exhibit.name)
          exhibit_hash[exhibit] << patron
        end
      end
    end
    exhibit_hash
  end

  def ticket_lottery_contestants(exhibit)
    contestants = []
    @patrons.each do |patron|
      if patron.spending_money < exhibit.cost
        contestants << patron 
      end
    end
    contestants
  end
end
