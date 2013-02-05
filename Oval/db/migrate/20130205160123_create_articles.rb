class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
		# creates to varibles in the table ;title and body
		t.string :title 
	    t.text :body
	    t.timestamps
    end
  end
end
