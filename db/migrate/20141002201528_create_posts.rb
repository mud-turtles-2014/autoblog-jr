class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.string :title
  		t.string :content
  		t.belongs_to :editor
  		t.timestamps
  	end
  end
end
