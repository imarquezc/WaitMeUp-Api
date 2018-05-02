class AddUrlToRequest < ActiveRecord::Migration[5.1]
  def change
    add_column :requests, :url, :string
  end
end
