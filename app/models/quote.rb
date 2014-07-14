class Quote < ActiveRecord::Base
  validates :body, uniqueness: true

  self.per_page = 1
end
