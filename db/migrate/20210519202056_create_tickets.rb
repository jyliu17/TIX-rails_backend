class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :description
      t.string :assigned_to
      t.string :category
      t.string :sub_category
      t.string :priority
      t.timestamp :create_at
      t.timestamp :update_at
      t.timestamp :complete_at
      t.integer :status_id

      t.timestamps
    end
  end
end
