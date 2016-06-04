class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string :titulo
      t.string :autor
      t.text :descripcion
      t.integer :año

      t.timestamps null: false
    end
  end
end
