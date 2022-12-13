class CreateInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :infos do |t|
      t.string :name
      t.string :location
      t.string :phone
      t.string :email 
      t.string :about 

      t.timestamps
    end
  end
end
