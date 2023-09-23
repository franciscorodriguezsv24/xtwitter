class ForeignKeyFollower < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :followers, :users, column: :follower
    add_foreign_key :followers, :users, column: :followee
  end
end
