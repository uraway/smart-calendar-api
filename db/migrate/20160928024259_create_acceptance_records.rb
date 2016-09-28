class CreateAcceptanceRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :acceptance_records do |t|
      t.boolean :location, null: false, default: true
      t.boolean :repeat, null: false, default: true
      t.boolean :reminder_minutes, null: false, default: true

      t.timestamps
    end
  end
end
