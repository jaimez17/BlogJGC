class CreatePrincidencia < ActiveRecord::Migration
  def change
    create_table :princidencia do |t|
      t.string :codigo
      t.string :name

      t.timestamps null: false
    end
  end
end
