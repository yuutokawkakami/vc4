class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.string :family_name, null: false, length: { maximum: 20 }
      t.string :given_name,  null: false, length: { maximum: 20 }
      t.string :email,       null: false
      t.string :email
      t.integer :mobile_phone

      t.timestamps
    end
    add_index :tweets, :email, unique: true
  end
end
