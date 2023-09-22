class CreateTweetreplies < ActiveRecord::Migration[7.0]
  def change
    create_table :tweetreplies do |t|
      t.references :tweet, null: false, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
