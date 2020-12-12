class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :students, :teacher_ids, :integer
    remove_column :teachers, :student_id, :integer
  end
end
