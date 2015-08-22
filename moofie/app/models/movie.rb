class Movie < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, styles: { medium: "214x317>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
