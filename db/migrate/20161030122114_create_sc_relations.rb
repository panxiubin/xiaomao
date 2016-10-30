class CreateScRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :sc_relations do |t|
      t.integer :student_id
      t.integer :course_id
      t.timestamps
    end
  end
end
