class AddCustomGuestText < ActiveRecord::Migration
  def change
    change_table :guests do |t|
      t.string :custom_guest_text, :limit => 2000
    end
  end
end
