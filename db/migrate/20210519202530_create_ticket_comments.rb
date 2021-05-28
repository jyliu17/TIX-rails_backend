class CreateTicketComments < ActiveRecord::Migration[6.1]
  def change
    create_table :ticket_comments do |t|
      t.text :content
      # t.timestamp :created_at
      # t.timestamp :updated_at
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :ticket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
