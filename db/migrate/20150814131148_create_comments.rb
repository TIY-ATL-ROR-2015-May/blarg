class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
        t.text :comment
        t.integer :user_id
        t.integer :post_id

        t.datetime :written_at
      t.timestamps null: false
    end
  end
end
