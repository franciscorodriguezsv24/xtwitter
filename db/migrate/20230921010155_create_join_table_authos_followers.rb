class CreateJoinTableAuthosFollowers < ActiveRecord::Migration[7.0]
  def change
    create_join_table :authors, :followers do |t|
      # t.index [:author_id, :follower_id]
      # t.index [:follower_id, :author_id]
    end
  end
end
