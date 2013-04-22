class AddSongSuggestion < ActiveRecord::Migration
  def change
    change_table :guests do |t|
      t.string :song_suggestion, :limit => 2000
    end
  end
end
