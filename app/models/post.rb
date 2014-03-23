class Post < ActiveRecord::Base
  acts_as_taggable

  def to_param
    "#{id} #{name}".parameterize
  end
end
