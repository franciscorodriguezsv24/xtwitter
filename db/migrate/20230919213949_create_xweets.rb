class CreateXweets < ActiveRecord::Migration[7.0]
  def change
    create_table :xweets do |t|
      t.text :body
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
