require "minitest/autorun"
require_relative "../lib/flat"

class FlatArrayTest < Minitest::Test
  def setup
    @flat = Flat.new
  end

  def test_flat_flat_array
    array = [1,2,3,4]
    flat_array = [1,2,3,4]

    assert_equal flat_array, @flat.execute(array)
  end

  def test_flat_array_with_one_nested_array
    array = [1,[2,3],4,5,6]
    flat_array = [1,2,3,4,5,6]

    assert_equal flat_array, @flat.execute(array)
  end

  def test_flat_array_with_two_nested_array
    array = [1,[2,[3]],4,5,6]
    flat_array = [1,2,3,4,5,6]

    assert_equal flat_array, @flat.execute(array)
  end

  def test_final_test
    array = [[1,2,[3]],4]
    flat_array = [1,2,3,4]

    assert_equal flat_array, @flat.execute(array)
  end
end
