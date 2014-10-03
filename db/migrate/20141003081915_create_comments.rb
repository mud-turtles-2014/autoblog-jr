class CreateComments < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
  		t.string :text
  		t.belongs_to :post
  		t.belongs_to :editor
  		t.timestamps
  	end
  end
end
