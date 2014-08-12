module QuoteFinders
	def random
		Quote.first(offset: rand(Quote.count))
	end
end