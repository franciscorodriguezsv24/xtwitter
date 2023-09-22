class CreateHastags < ActiveRecord::Migration[7.0]
  def change
    create_table :hastags do |t|
      t.text :name
      t.text :tweet

      t.timestamps
    end
  end
end
