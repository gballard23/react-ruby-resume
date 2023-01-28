class RemoveColumnFromInfo < ActiveRecord::Migration[6.1]
  def change
    remove_column :infos, :about, :string
  end
end
