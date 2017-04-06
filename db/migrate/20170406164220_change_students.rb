require_relative '../config'

# this is where you should use an ActiveRecord migration to

class ChangeStudents < ActiveRecord::Migration
  def change
    add_column :students, :teacher_id, :integer  
  end
end
