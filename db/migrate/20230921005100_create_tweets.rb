class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.text :body
      t.references :author, null: false, foreign_key: true
      t.boolean :retweet
      t.string :quote_id
      t.references :bookmark, null: false, foreign_key: true
      t.references :like, null: false, foreign_key: true

      t.timestamps
    end
  end
end
