class Controller
  def self.run!
    shoe = Shoe.new
    deal = Deal.new
    deal_one_card(shoe, deal.player_hand)
    deal_one_card(shoe, deal.dealer_hand)
    deal_one_card(shoe, deal.player_hand)
    deal_one_card(shoe, deal.dealer_hand)
    deal.check_for_ten
    deal.check_for_ace
    deal.found_blackjack
    Controller.player_decisions(shoe, deal.player_hand)
    deal.play_house_way(shoe, deal.dealer_hand)
    deal.determine_win_lose
  end

  def self.player_decisions(shoe, hand)
    puts "What do you want to do?"
    puts "(h)it or (s)tay"
    user_input = gets.chomp.downcase
      if user_input == "h"
        deal_one_card(shoe, hand)
      elsif user_input == "s"
        puts "You stay"
      else
        puts "Wrong command!"
      end
  end


end


# a = Card.new("2", 2)
# b = Card.new("7", 7)
# c = Card.new("Q", 10)
# d = Card.new("A", 11)
# e = Card.new("A", 11)
# # the_shoe = Shoe.new
# g = Deal.new(a,b,c,d,e)
# # deal_one_card(the_shoe, g.player_hand)
# # deal_one_card(the_shoe, g.dealer_hand)
# # deal_one_card(the_shoe, g.player_hand)
# # deal_one_card(the_shoe, g.dealer_hand)

# g.player_hand
# g.dealer_hand
# g.check_for_ten
# g.check_for_ace
# p g.calc_hand_total(g.dealer_hand)
# p g.calc_hand_total(g.player_hand)
# p g.determine_win_lose
