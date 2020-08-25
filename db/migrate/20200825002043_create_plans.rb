class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.references :party, null:false, foreign_key: true
      t.references :main_course, null:false, foreign_key: true
      t.references :snack, null:false, foreign_key: true
      t.references :drink, null:false, foreign_key: true
      t.timestamps
    end
  end
end