class Quote < ActiveRecord::Base
  extend QuoteFinders

  validates :body, uniqueness: true

  default_scope order: 'created_at DESC'

  self.per_page = 15

  def self.words_with_frequency
    Quote.all.each do |quote|
      body = quote.body.split(' ')

      frequency = Hash.new(0)
      body.each { |word| frequency[word.downcase] += 1  }
      return frequency
    end
  end
end
