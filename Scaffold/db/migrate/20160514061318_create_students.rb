class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :edad
      t.string :domicilio

      t.timestamps null: false
    end
  end
end
