class Plan < ApplicationRecord
    belongs_to :party
    belongs_to :main_course, optional: true
    belongs_to :snack, optional: true
    belongs_to :drink, optional:true
end
