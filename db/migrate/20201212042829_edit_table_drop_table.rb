class EditTableDropTable < ActiveRecord::Migration
  def change
    drop_table :student_users 
    create_table :student_teachers do |t|
      t.integer :student_id
      t.integer :teacher_id
    end
  end
end
