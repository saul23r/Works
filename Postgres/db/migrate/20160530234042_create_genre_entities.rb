class CreateGenreEntities < ActiveRecord::Migration
  def change
    create_table :genre_entities do |t|
      t.text :Name
      t.text :Description

      t.timestamps null: false
    end
  end
end
