class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :Title
      t.string :Tag
      t.text :Content
      t.integer :Author

      t.timestamps
    end
  end
end
