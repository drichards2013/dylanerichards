class Quote < ActiveRecord::Base
  extend QuoteFinders

  validates :body, uniqueness: true

  default_scope order: 'created_at DESC'

  self.per_page = 15

  def word_frequency
    words = self.body.split(' ')
    frequency = Hash.new(0)
    words.each { |word| frequency[word.downcase] += 1  }
    frequency
  end

  def self.total_word_frequency
    frequencies = Quote.all.map(&:word_frequency)
    frequencies.inject { |memo, el| memo.merge(el){ |k, old_v, new_v| old_v + new_v } }.sort_by{ |k, v| v }.reverse
  end
end
