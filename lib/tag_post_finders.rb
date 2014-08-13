module TagPostFinders
	def tagged_with_programming
		tagged_with(["programming", 'web development'], :any => true)
		.order("created_at DESC")
	end

	def tagged_with_photography
		tagged_with(["photography", 'iphoneography'], :any => true)
	end

	def tagged_with_running
		tagged_with(["running"], :any => true).order("created_at DESC")
	end

	def tagged_with_yoga
		tagged_with(["yoga"], :any => true).order("created_at DESC")
	end

	def tagged_with_mindfulness 
		tagged_with(["mindfulness"], :any => true).order("created_at DESC")
	end

	def tagged_with_meditation
		tagged_with(["meditation"], :any => true).order("created_at DESC")
	end

	def tagged_with_web_development
		tagged_with(["web development"], :any => true).order("created_at DESC")
	end
end