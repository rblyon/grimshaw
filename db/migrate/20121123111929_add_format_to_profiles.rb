class AddFormatToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :format, :string
  end
end
