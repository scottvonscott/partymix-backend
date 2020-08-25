class Item < ApplicationRecord
    belongs_to :category
    has_many :party_plans
    has_many :parties, through: :party_plans
end
