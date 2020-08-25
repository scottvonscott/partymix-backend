class CreateDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.text :notes
      t.boolean :alcoholic

      t.timestamps
    end
  end
end
