class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |c|
      c.string :title
      c.integer :teacher_id
      c.integer :student_id
      c.integer :user_id
    end
  end
end
