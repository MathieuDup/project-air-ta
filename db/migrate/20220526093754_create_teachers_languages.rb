class CreateTeachersLanguages < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers_languages do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
