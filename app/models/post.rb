class Post < ActiveRecord::Base
  default_scope order: 'created_at desc'

  extend FriendlyId
  extend TagPostFinders

  friendly_id :title, use: :slugged
  acts_as_taggable

  validates_presence_of :title, :body

  self.per_page = 5

  def pretty_created_at
    created_at.to_time.strftime('%B %d %Y')
  end
end
