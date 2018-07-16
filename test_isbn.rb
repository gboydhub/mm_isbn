require 'minitest/autorun'
require_relative 'isbn.rb'

class TestISBN < Minitest::Test
  def test_assert_1_equals_1
    assert_equal(1, 1)
  end
  def test_invalid_isbn_is_false
    assert_equal(false, valid_isbn?('abcd'))
  end
end