class CreateUsers < ActiveRecord::Migration[7.0]
  def change
<<<<<<< HEAD:db/migrate/20230922174944_create_users.rb
    create_table :users do |t|
=======
    create_table :authors do |t|
>>>>>>> master:db/migrate/20230921004314_create_authors.rb
      t.string :username
      t.string :name
      t.string :lastname
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
