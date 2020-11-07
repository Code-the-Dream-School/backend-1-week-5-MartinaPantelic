#write your code here
def translate word
	array = word.split(" ")
	array.map! do |word|
		word.downcase!
		count = 0
		length = word.length
		if 'aoiue'.include? word[count]
			this_word = word + 'ay'
		else

			count += 1
			cons = true
			while cons
				if ('aoiue'.include? word[count]) && (word[count-1..count] != "qu")
					cons = false
					this_word = word[count...length] + word[0...count] + "ay"
				else
					count += 1
				end
			end
		end
		word = this_word
	end
	array.join(" ")
end