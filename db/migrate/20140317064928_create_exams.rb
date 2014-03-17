class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :name
      t.float :marks

      t.timestamps
    end
  end
end
