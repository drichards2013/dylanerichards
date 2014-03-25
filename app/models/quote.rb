class Quote < ActiveRecord::Base
  validates :body, uniqueness: true
end
