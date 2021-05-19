class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password_digest
      t.boolean :is_agent
      t.boolean :is_admin

      t.timestamps
    end
  end
end
