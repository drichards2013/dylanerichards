class Photo < ActiveRecord::Base
  default_scope order: 'created_at DESC'

  has_attached_file :image, :styles => { :medium => "240x240>", :thumb => "75x75>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  validates :image, presence: true
end
