class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :description
      t.string :attachment
      t.boolean :deleted
      
      t.timestamps
    end
  end
end
