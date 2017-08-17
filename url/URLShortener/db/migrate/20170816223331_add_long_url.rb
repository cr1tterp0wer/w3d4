class AddLongUrl < ActiveRecord::Migration[5.1]
  def change
    add_column :shortened_urls, :long_url, :string
  end
end
