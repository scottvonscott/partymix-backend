class PartyPlan < ApplicationRecord
    belongs_to :party 
    belongs_to :item
    accepts_nested_attributes_for :party
    accepts_nested_attributes_for :item
end
