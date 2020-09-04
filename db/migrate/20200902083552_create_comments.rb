class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :description
      t.string :tag
      t.boolean :deleted
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
