class Book
	attr_reader :title
	def title= title
		array = title.split(" ")
		first_word = true
		array.map! do |word|
			word.downcase
			if first_word
				first_word = false
				word.capitalize
			elsif ["the", "a", "an", "and", "in", "of"].include? word
				word
			else
				word.capitalize
			end
		end
		@title = array.join(" ")
	end