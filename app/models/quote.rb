class Quote < ActiveRecord::Base
	extend QuoteFinders
	
  validates :body, uniqueness: true

  default_scope order: 'created_at DESC'

  self.per_page = 15
end

