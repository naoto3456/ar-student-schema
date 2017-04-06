require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateStudentTeachers < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :student_teachers do |t|

      # add columns that you would need for this table
      t.string :title
      t.integer :student_id
      t.integer :teacher_id      
      t.timestamps
    end
    
    remove_column :students, :teacher_id

  end
end
