class CreateUrls < ActiveRecord::Migration[7.2]
  def change
    create_table :urls do |t|
      t.string :original_url
      t.string :pretty_url
      t.timestamps
    end
  end
end
