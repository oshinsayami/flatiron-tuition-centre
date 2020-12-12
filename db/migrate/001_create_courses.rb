class CreateCourses < ActiveRecord::Migration
    def change
        create_table :courses do |c|
            c.string :title
            c.string :duration
        end
    end
end