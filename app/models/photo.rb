class Photo < ActiveRecord::Base
  default_scope order: 'created_at DESC'

  has_attached_file :image, :styles => { xmedium: "500x500>", large: "600x600>", medium: "400x400>", small: "200x200>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  validates :image, presence: true

  def random_size
    [:xmedium, :medium, :small].sample
  end
end
