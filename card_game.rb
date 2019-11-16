### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.
require_relative('card')

class CardGame

  def self.check_for_ace(card)
    if card.value.to_i == 1
      return true
    else
      return false
    end
  end

  def self.highest_card(card1, card2)
    if card1.value.to_i > card2.value.to_i
      return card1
    else
      return card2
    end
  end


  def self.cards_total(cards)
    total = 0
    for card in cards
      total += card.value
    end
    return "You have a total of #{total}"
  end
  
end
