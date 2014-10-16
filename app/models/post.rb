class Post < ActiveRecord::Base
  default_scope order: 'created_at desc'

  extend TagPostFinders

  acts_as_taggable

  validates_presence_of :title, :body

  self.per_page = 15

  def paginated
    all.paginate(page: params[:page])   
  end

  def paginated_with_tags
    tagged_with(params[:tag]).paginate(page: params[:page])
  end

  def to_param
    "#{id} #{title}".parameterize
  end
end
