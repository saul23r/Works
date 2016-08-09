class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.float :mount
      t.date :init_date
      t.date :end_date
      t.string :owner

      t.timestamps null: false
    end
  end
end
