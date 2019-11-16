require('minitest/autorun')
require('minitest/rg')
require_relative('../card_game')
require_relative('../card')
require('pry')

class CardGameTest < Minitest::Test

  def setup
    @card1 = Card.new("clubs", 9)
    @card2 = Card.new("clubs", 1)
    @card3 = Card.new("hearts", 10)
  end

  def test_check_for_ace__not_ace()
    # @card1 = Card.new("clubs", 9)
    result = CardGame.check_for_ace(@card1)
    assert_equal(result, false)
  end

  def test_check_for_ace__ace()
    result = CardGame.check_for_ace(@card2)
    assert_equal(result, true)
  end

  def test_highest_card__first_card_higher()
    result = CardGame.highest_card(@card1, @card2)
    assert_equal(@card1, result)
  end

  def test_highest_card__second_card_higher()
    result = CardGame.highest_card(@card1, @card3)
    assert_equal(@card3, result)
  end

  def test_cards_totals
    @cards = [@card1,@card2,@card3]
    result = CardGame.cards_total(@cards)
    assert_equal("You have a total of 20", result)
  end

end
