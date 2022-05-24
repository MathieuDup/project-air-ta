class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :location
      t.text :language
      t.text :availability
      t.float :price

      t.timestamps
    end
  end
end
