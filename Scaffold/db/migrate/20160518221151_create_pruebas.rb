class CreatePruebas < ActiveRecord::Migration
  def change
    create_table :pruebas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
