class AddRsvpCodeIndex < ActiveRecord::Migration
  def up
    add_index(:guests, :rsvp_code, :unique => true)
  end

  def down
    remove_index(:guests, :rsvp_code)
  end
end
