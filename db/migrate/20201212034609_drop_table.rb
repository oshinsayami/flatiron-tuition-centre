class DropTable < ActiveRecord::Migration
  def change
    drop_table :student_teachers
    
    create_table :student_users do |t|
      t.integer :student_id
      t.integer :user_id
    end
  end
end
