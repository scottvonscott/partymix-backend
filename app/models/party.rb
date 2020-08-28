class Party < ApplicationRecord
    has_many :party_plans, :dependent => :destroy
    has_many :items, through: :party_plans
    has_many :categories, through: :items
    accepts_nested_attributes_for :items
end
