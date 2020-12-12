class CreateStudentTeacher < ActiveRecord::Migration
    create_table :student_teachers do |s|
        s.integer :student_id
        s.integer :teacher_id
    end
end