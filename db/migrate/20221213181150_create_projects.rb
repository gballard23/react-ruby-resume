class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :links
      t.integer :info_id

      t.timestamps
    end
  end
end
