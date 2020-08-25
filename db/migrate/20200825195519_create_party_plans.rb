class CreatePartyPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :party_plans do |t|
      t.references :Party
      t.references :Item
      t.text :notes

      t.timestamps
    end
  end
end
