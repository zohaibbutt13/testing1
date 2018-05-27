class AddArtistsTable < ActiveRecord::Migration[5.1]
  def change
  	create_table :artists do |t|
      t.string :name
      t.string :facebook
      t.string :twitter
      t.timestamps
    end
  end
end
