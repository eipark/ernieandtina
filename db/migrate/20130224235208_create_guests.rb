class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :rsvp_code
      t.boolean :rsvp
      t.string :comment
      t.integer :plus_one

      t.timestamps
    end
  end
end
