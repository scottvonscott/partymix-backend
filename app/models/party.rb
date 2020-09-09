class Party < ApplicationRecord
    has_many :party_plans, :dependent => :destroy
    has_many :items, through: :party_plans
    has_many :categories, through: :items
    accepts_nested_attributes_for :items

    def self.create_plans(party, params)
        
          x = 0
          params[:newItems][0].values.each do |items|
          cat = params[:newItems][0].keys[x].to_i
          x += 1
          items.each do |item|
          item = Item.find_or_create_by(name: item, category_id: cat)
          item.save
          party_plan = PartyPlan.new(party: party, item: item)
          party_plan.save
          end
        end
        return party
    end
end
