class Party < ApplicationRecord
    has_many :party_plans
    has_many :items, through: :party_plans
    has_many :categories, through: :items
end
