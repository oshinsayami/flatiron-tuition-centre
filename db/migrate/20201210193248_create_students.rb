class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |s|
      s.string :name
    end
  end
end
