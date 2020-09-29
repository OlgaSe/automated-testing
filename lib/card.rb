
# card.rb

class Card

  VALID_SUITS = [:hearts, :spades, :clubs, :diamonds]
  VALID_VALUES = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
  VALUE_TO_FACE_CARD = {
      1 => "Ace",
      11 => "Jack",
      12 => "Queen",
      13 => "King"
  }
  attr_reader :value, :suit

  def initialize(value, suit)
    validate_suit(suit)
    validate_value(value)
    @value = value
    @suit = suit

  end

  def validate_suit(suit)
    if !VALID_SUITS.include?(suit)
      raise ArgumentError.new("Wrong value for suit #{suit}")
    end
  end

  def validate_value(value)
    if !VALID_VALUES.include?(value)
      raise ArgumentError.new("Something with #{value} is wrong")
    end
  end

  def to_s
    if VALUE_TO_FACE_CARD.include?(@value)
      face_card = VALUE_TO_FACE_CARD[@value]
    else
      face_card = @value
    end
    return "#{face_card} of #{@suit.to_s}"
  end
end


#
# cardOne = Card.new(2, "spades")
# p cardOne