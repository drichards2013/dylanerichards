module QuoteFinders
	def random
		first(offset: rand(Quote.count))
	end
end
