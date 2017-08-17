class Visit < ApplicationRecord

  belongs_to :visitor,
  primary_key: :id,
  foreign_key: :visitor_id,
  class_name:  :User

  belongs_to :url,
  primary_key: :id,
  foreign_key: :url_id,
  class_name: :ShortenedUrl

end
