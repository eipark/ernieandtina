class AddNickname < ActiveRecord::Migration
  def change
    change_table :guests do |t|
      t.string :nick_name, :limit => 2000
    end
  end
end
