class AddEventsTable < ActiveRecord::Migration[5.1]
  def change
  	create_table :events do |t|
      t.string :name
      t.datetime :event_date
      t.integer :artist_id
      t.timestamps
    end
  end
end
