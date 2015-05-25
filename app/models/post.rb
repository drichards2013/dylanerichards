class Post < ActiveRecord::Base
  default_scope order: 'created_at desc'

  extend TagPostFinders

  acts_as_taggable

  validates_presence_of :title, :body

  self.per_page = 15

  def to_param
    Parameterizer.parameterize(self)
  end

  def pretty_created_at
    created_at.to_time.strftime('%B %d %Y')
  end
end
