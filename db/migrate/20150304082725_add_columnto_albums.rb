class AddColumntoAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :time_at, :time
  end
end
