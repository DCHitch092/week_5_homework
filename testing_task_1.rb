# card model needs to be called
require_relative('card')

class CardGame

  def check_for_ace(card)
    if card.value.to_i = 1
    # value need to be presented as an integer
      return true
    else
      return false
    end
  end

  # def highest_card(card1, card2)
  ## dif highest_card(card1 card2) - spelling mistakes
  #   if card1.value > card2.value
  #     return card
  #   else
  #     return card2
  #   end
  # end
  ## end - in the wrong place
  #
  # def self.cards_total(cards)
  #   total
  #   for card in cards
  #     total += card.value
  #     return "You have a total of" + total
  #   end
end
#end needed to close the class
