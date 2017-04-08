class CreateWikis < ActiveRecord::Migration[5.1]
  def change
    create_table :wikis do |t|
      t.string :tag
      t.text :info
      t.string :title
      t.string :user_id

      t.timestamps
    end
  end
end
