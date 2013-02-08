class CreateAnnoucements < ActiveRecord::Migration
  def change
    create_table :annoucements do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
