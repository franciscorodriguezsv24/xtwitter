class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.text :mention
      t.references :tweet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
