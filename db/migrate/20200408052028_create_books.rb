class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :name, null: false
      t.text :explain, null: false
      t.text :image
      t.text :genre, null: false
      # t.references :user, null: false,foreign_key: true
      t.timestamps
    end
  end
end
