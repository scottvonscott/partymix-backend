class CreateMainCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :main_courses do |t|
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end
