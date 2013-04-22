class AlterStringLength < ActiveRecord::Migration
  def change
    change_column :guests, :allergies, :string, :limit => 2000
    change_column :guests, :comment, :string, :limit => 2000
    change_column :guests, :rsvp_code, :string, :limit => 5
  end

end
