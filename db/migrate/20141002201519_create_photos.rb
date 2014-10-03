class CreatePhotos < ActiveRecord::Migration
  def change
  	create_table :photos do |t|
  		t.string :name
  		t.string :url
  		t.belongs_to :post
  		t.timestamps
  	end
  end
end
