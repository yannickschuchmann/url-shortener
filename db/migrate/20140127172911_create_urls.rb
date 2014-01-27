class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :key
      t.string :ref

      t.timestamps
    end
  end
end
