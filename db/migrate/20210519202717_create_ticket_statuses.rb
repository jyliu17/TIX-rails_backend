class CreateTicketStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :ticket_statuses do |t|
      t.string :state
      t.belongs_to :ticket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
