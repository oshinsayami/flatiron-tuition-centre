class AddColumnToStudents < ActiveRecord::Migration
    def change
        add_column :students, :teacher_ids, :integer
    end
end