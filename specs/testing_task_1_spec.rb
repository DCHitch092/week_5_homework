require('minitest/autorun')
require('minitest/rg')
require_relative('../testing_task_1')
require_relative('../card')

class TestingTaskTest < Minitest::Test

  def test_check_for_ace__not_ace()
    card1 = Card.new("clubs", "9")
    result = checkforAce(card1)
    assert_equal(result, false)
  end

  def test_check_for_ace__ace()
    card2 = Card.new("diamonds", "1")
    result = checkforAce(card2)
    assert_equal(result, true)
  end

end
