class CreateExtweets < ActiveRecord::Migration
  def change
    create_table :extweets do |t|
      t.string      :title
      t.text        :text      
      t.timestamps
    end
  end
end
