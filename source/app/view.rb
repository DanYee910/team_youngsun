class View

  def self.rules
    puts rules = File.read('../rules.txt')
  end

  def self.insult
    insults = File.readlines('../loser.txt')
    puts insults.sample
  end

end

View.rules
VIew.insult