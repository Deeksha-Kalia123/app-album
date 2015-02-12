class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.attachment :avatar
      t.references :user
      t.references :album
      t.timestamps
    end
  end
end
