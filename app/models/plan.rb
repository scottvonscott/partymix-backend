class Plan < ApplicationRecord
    belongs_to :party
    belongs_to :main_course
    belongs_to :snack
    belongs_to :drink
end
