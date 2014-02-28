class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.integer :url_id
      t.string :referrer
      t.string :ip
      t.string :location

      t.timestamps
    end
  end
end
