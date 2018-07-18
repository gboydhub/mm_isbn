require 'minitest/autorun'
require_relative 'isbn.rb'

class TestISBN < Minitest::Test
  def test_assert_1_equals_1
    assert_equal(1, 1)
  end
  def test_invalid_isbn_is_false
    assert_equal(false, valid_isbn?('abcd'))
  end
  def test_valid_isbn_10_is_true
    assert_equal(true, valid_isbn?('0471958697'))
  end
  def test_valid_isbn10_with_x
    assert_equal(true, valid_isbn?('877195869x'))
  end
  def test_valid_isbn10_with_dashes
    assert_equal(true, valid_isbn?('0-321-14653-0'))
  end
end