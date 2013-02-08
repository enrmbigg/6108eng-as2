class CreateAnnoucments < ActiveRecord::Migration
  def change
    create_table :annoucments do |t|
    	t.string :title
    	t.text :body
      t.timestamps
    end
  end
end
