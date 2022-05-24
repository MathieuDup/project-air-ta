class AddReferencesToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_reference :teachers, :user, foreign_key: true
  end
end
