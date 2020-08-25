class CreatePartyPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :party_plans do |t|
      t.references :party, null:false, foreign_key: true
      t.references :main_course, null:true, foreign_key: true
      t.references :snack, null:true, foreign_key: true
      t.references :drink, null:true, foreign_key: true
      t.timestamps
    end
  end
end
