class CreateBuys < ActiveRecord::Migration[5.1]
  def change
    create_table :buys do |t|
      t.integer :user_id
      t.string :title
      t.string :link
      t.text :description

      t.timestamps
    end
  end
end
