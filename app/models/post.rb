class Post < ActiveRecord::Base
  acts_as_taggable

  self.per_page = 1

  def to_param
    "#{id} #{title}".parameterize
  end
end
