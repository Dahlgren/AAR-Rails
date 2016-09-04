class AddTimestampIndexToEvents < ActiveRecord::Migration[5.0]
  def change
    add_index :events, :timestamp
    add_index :events, [:mission_id, :timestamp]
  end
end
