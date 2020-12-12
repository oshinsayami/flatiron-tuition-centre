class DropTables < ActiveRecord::Migration
  def change
    drop_table :courses
    drop_table :student_teachers
    drop_table :students

    add_column :teachers, :address, :string
    add_column :teachers, :course, :string
    add_column :teachers, :student, :string

    create_table :user_teachers do |t|
      t.integer :user_id
      t.integer :teacher_id
    end


  end
end
