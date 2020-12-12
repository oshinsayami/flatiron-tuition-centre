class CreateTableOfTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string  :name
      t.string  :email
      t.string :address
      t.string :course
      t.string :student
    end
     
  end
end
