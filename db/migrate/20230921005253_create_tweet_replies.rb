class CreateTweetReplies < ActiveRecord::Migration[7.0]
  def change
    create_table :tweet_replies do |t|
      t.text :comment
      t.references :tweet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
