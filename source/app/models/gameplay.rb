class Gameplay
	attr_reader: 

	def initialize
		@player = []
		@house = []
	end

	def deal_one_card(shoe, hand)#hand is @player or @house
		hand << shoe.shift
	end

	def deal_initial_hands
		call deal_one_card 4 times, to give player/banker their first cards
	end

	def check_if_ace?
		if @house.first == "A", then check hole card == "10,J,Q,K"
	end#returns true/false

	def check_if_ten?
		if @house.first == "10,J,Q,K", then check hole card == "A"
	end #returns true/false

	def blackjack_found?
		if check_if_ten || check_if_ace is true, then skip to determine outcome
	end

	def calc_hand_total(hand)
		sum the values of all cards in the hand array
		check_for_bust?
	end #Return Interger

	def hit
		deal_one_card
		calc_hand_total
	end

	def stay
		#game continues
	end

	def check_for_bust?
		@bust = false
		@bust true if calc_hand_total >= 22
	end

end

class Dealer
	#def hit chart, rules for dealer hit or stay
end



## Start with the shoe

## deal 4 cards: 2 for player 2 for the house
## 3 cards will be revealed: 2 for player, 1 for house
## IF reavealed house card is an 10,J,Q,K
### check the unrevealed house card AND If that card is an ace then => Hand over
## IF the revealed house card is an ACE
### check the unrevealed house card AND If that card is an 10,J,Q,K then => Hand over
## ELSE
### Game Continues....
## CALCULATE TOTAL for PLAYERS hand
### IF BLACKJACK(21.5).. hand over  
## ASK the user to STAY or HIT   --in controller
### IF STAY THEN continue DEALERS HAND
### IF HIT then give player a card, THEN CALCULATE TOTAL for players hand
### KEEP on asking for HIT or STAY until BUST or decide to stay.(LOOP)

### HOUSE if card total is 17 or higher
##STAY
### IF 16 or less
##HIT

## COMPARE hand totals.
### The outcome WIN, LOSE or TIE
## IF WIN THEN, then +10 to users balance
## IF TIE THEN, nothing
## IF LOSE THEN, -10


