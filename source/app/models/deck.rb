class Deck
	def make_deck
		"A23456789TJQK"*4
	end

	def make_shoe
		make_deck*6.shuffle
	end
end

## Build up 6 decks, then shuffle

## OUTPUT - Array of single string chracters reprenting a single card