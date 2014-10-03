class CreateEditors < ActiveRecord::Migration
  def change
  	create_table :editors do |t|
  		t.string :first_name
  		t.string :last_name
  		t.string :username
  		t.string :password_digest
  		t.timestamps
  	end
  end
end
