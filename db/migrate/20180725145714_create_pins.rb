class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.references :user, foreign_key: true
      #Liaison des tables avec clé étrangère
      t.text :image
      t.timestamps
    end
  end
end
