require('minitest/autorun')
require('minitest/rg')
require_relative('../card')
# require_relative('../card_game')

class CardTest < Minitest::Test

  def test_init()
    test_card = Card.new("hearts", "king")
    result = test_card
    assert_equal(@suit = "hearts", result.suit)
    assert_equal(@value = "king", result.value)
  end

end
