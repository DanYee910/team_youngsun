# class Deal
# @dealer_hand = []  ex:["2","4","2","Q"] totals 18
# @player_hand = []
# def deal_one_card(player/dealer, shoe) - pulls(shift) one card for the hand from the shoe


# shoe is [<cardObj, @face = "K", @value = 10>,...<>]

class Card
  attr_reader :face, :val
  def initialize(face, val)
    @face = face
    @val = val
  end
end

class Deal
  attr_reader :dealer_hand, :player_hand
  def initialize(a,b,c,d,e)
    @dealer_hand = [c, d]
    @player_hand = [a, b, e]
  end

  def deal_one_card(shoe, hand)
    hand << shoe.shift
  end

  def check_for_ace
    if @dealer_hand.first.val == 10
      return true if @dealer_hand[1].val == 11
    else
      return false
    end
  end

  def check_for_ten
    if @dealer_hand.first.val == 11
      return true if @dealer_hand[1].val == 10
    else
      return false
    end
  end

  def found_blackjack
    determine_win_lose if check_for_ten || check_for_ace
  end

  def play_house_way(shoe, hand)
    if calc_hand_total(@dealer_hand) < 17
      deal_one_card(shoe, hand)
    end
  end

  def calc_hand_total(hand)
    total = 0.0
    #how many aces
    num_aces = 0
    hand.each {|card| num_aces += 1 if card.face == "A"}

    hand.each {|card| total += card.val}
    while total >= 22 && num_aces > 0
      total -= 10
      num_aces -= 1
    end

    #for blackjacks
    total += 0.5 if hand.size == 2 && total == 21

    return total
  end

  def determine_win_lose
    if calc_hand_total(@player_hand) > calc_hand_total(@dealer_hand)
      return "player"
    elsif calc_hand_total(@player_hand) < calc_hand_total(@dealer_hand)
      return "dealer"
    else
      return "push"
    end
  end
end

a = Card.new("2", 2)
b = Card.new("7", 7)
c = Card.new("Q", 10)
d = Card.new("A", 11)
e = Card.new("A", 11)
# the_shoe = Shoe.new
g = Deal.new(a,b,c,d,e)
# deal_one_card(the_shoe, g.player_hand)
# deal_one_card(the_shoe, g.dealer_hand)
# deal_one_card(the_shoe, g.player_hand)
# deal_one_card(the_shoe, g.dealer_hand)

g.player_hand
g.dealer_hand
g.check_for_ten
g.check_for_ace
p g.calc_hand_total(g.dealer_hand)
p g.calc_hand_total(g.player_hand)
p g.determine_win_lose