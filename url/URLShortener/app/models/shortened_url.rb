# == Schema Information
#
# Table name: shortened_urls
#
#  id         :integer          not null, primary key
#  short_url  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  long_url   :string
#  user_id    :integer
#

require 'securerandom'

class ShortenedUrl < ApplicationRecord
  validates :long_url,:user_id, presence: true

  belongs_to :users,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :User

  def self.random_code
    SecureRandom.urlsafe_base64
  end

  def self.store_small_url(shortened_url)
    url = ShortenedUrl.random_code
    url = "www.#{url}.com"
    shortened_url.short_url =  url
  end

  def initialize(options)
    super(options)
    ShortenedUrl.store_small_url(self)
  end
end
