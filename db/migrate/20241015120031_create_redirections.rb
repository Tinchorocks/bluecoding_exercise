class CreateRedirections < ActiveRecord::Migration[7.2]
  def change
    create_table :redirections do |t|
      t.string :url
      t.integer :times_used, default: 0

      t.timestamps
    end
  end
end
