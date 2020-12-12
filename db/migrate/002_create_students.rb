class CreateStudents < ActiveRecord::Migration
    def change
        create_table :students do |s|
            s.string :name
            s.string :email
            s.string :grade
            s.integer :course_id
        end
    end
end