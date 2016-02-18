class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.references :mission, foreign_key: true
      t.string :type
      t.jsonb :data

      t.timestamps
    end
  end
end
