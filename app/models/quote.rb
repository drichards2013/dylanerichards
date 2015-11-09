class Quote < ActiveRecord::Base
  extend QuoteFinders

  validates :body, uniqueness: true

  default_scope order: 'created_at DESC'

  self.per_page = 15

  def self.words_with_frequency
    frequency = Hash.new(0)
    Quote.all.each do |quote|
      body = quote.body.split(' ')

      body.each { |word| frequency[word.downcase] += 1  }
    end

    frequency
  end
end
