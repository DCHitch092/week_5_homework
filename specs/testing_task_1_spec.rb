require('minitest/autorun')
require('minitest/rg')
require_relative('../testing_task_1.rb')
require_relative('../card')

class TestingTaskTest < Minitest::Test

  def setup
    @card1 = Card.new("clubs", "9")
    @card2 = Card.new("clubs", "1")
    @card2 = Card.new("hearts", "10")
  end

  def test_check_for_ace__not_ace()
      @card1 = Card.new("clubs", "9")
    result = check_for_ace(@card1)
    assert_equal(result, false)
  end

  # def test_check_for_ace__ace()
  #   result = checkforAce(card2)
  #   assert_equal(result, true)
  # end

  # def test_highest_card__first_card_higher()
  #   result = highest_card(card1, card2)
  #   assert_equal(result, card1)
  # end
  #
  # def test_highest_card__second_card_higher()
  #   result = highest_card(card1, card3)
  #   assert_equal(result, card3)
  # end

  # def test_cards_total
  #   result = CardTest.cards_total([card1,card2,card3])
  #   assert_equal(result, "You have a total of 20")
  # end




end
