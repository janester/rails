class CreateAlbumsTable < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :image, :default => "http://www.masonfamilymedicine.com/layout/images/NoPhotoDefault.png"
      t.timestamps
    end
  end
end
