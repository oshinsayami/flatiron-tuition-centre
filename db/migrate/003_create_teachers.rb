class CreateTeachers < ActiveRecord::Migration
    def change
        create_table :teachers do |t|
            t.string  :name
            t.string  :email
            t.integer :user_id
            t.integer :course_id
            t.integer :student_id
        end
    end
end