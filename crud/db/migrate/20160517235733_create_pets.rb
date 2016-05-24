class CreatePets < ActiveRecord::Migration
  def change

    create_table :pets do |t|
      t.string :nombre
      t.string :edad
      t.string :dueno

      t.timestamps null: false
    end
  end
end
