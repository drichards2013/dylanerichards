class Quote < ActiveRecord::Base
	extend QuoteFinders

  validates :body, uniqueness: true

  self.per_page = 15

  default_scope :order => 'created_at DESC'
end
