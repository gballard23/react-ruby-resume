class CreateSocials < ActiveRecord::Migration[6.1]
  def change
    create_table :socials do |t|
      t.string :name
      t.string :link
      t.string :info_id

      t.timestamps
    end
  end
end
