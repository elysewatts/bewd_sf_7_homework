class AddUrlToBooks < ActiveRecord::Migration
  def change
    add_column :books, :url_image, :string
  end
end
