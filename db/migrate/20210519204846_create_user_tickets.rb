class CreateUserTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :user_tickets do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :ticket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
