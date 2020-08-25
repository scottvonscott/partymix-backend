class CreatePartyPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :party_plans do |t|
      t.references :party, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
