class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :fullname
      t.integer :bitrate
      t.string :container
      t.string :codec
      t.string :level

      t.timestamps
    end
  end
end
