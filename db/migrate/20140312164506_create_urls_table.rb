class CreateUrlsTable < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :url
      t.string :short_url
      t.timestamps
    end
    add_index :urls, :short_url
  end
end
