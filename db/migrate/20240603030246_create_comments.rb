class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
