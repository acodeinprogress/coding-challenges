class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck
  def initialize
    @cards = []
    suits = ["spades", "diamonds", "hearts", "clubs"]
    ranks = []
    (1..10).each do |num|
      ranks << num
    end
    ranks << "Jack"
    ranks << "Queen"
    ranks << "King"
    ranks << "Ace"
    ranks.each do |rank|
      suits.each do |suit|
        card = Card.new(rank, suit)
        @cards << card
      end
    end
  end

  def shuffle
    cards = @cards.shuffle!
  end

  def deal
    puts "#{@cards[0].rank} of #{@cards[0].suit}"
    @cards.shift
  end
end

deck = Deck.new
deck.shuffle
deck.deal
