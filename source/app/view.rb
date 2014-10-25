class View
  def self.welcome
    puts "Welcome to Blackjack for Babies!"
  end

  def self.rules
    puts rules = File.read('../rules.txt')
  end

  def self.insult
    insults = File.readlines('../loser.txt')
    puts insults.sample
  end

  def self.display_hands
    #
  end

end

View.rules
VIew.insult