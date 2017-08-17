class RemoveLongId < ActiveRecord::Migration[5.1]
  def change
    remove_column :shortened_urls, :long_url_id
  end
end
