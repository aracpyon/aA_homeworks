class AddHouseIdToPerson < ActiveRecord::Migration[6.0]
  def change
    add_column(:People, :house_id, :integer, null: false)
  end
end
