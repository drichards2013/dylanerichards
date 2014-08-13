class Post < ActiveRecord::Base
	extend TagPostFinders

  acts_as_taggable

  self.per_page = 15

  def to_param
    "#{id} #{title}".parameterize
  end
end