class RemoveLanguageToTeachers < ActiveRecord::Migration[6.1]
  def change
    remove_column :teachers, :language, :text
  end
end
