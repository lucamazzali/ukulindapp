class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :event_type, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
