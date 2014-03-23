class Post < ActiveRecord::Base
  acts_as_taggable

  def to_param
    "#{id} #{title}".parameterize
  end
end
