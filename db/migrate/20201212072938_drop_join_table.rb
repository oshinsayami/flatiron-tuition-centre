class DropJoinTable < ActiveRecord::Migration
  def change
    drop_table :user_teachers
    add_column :teachers, :user_id, :integer
  end
end
