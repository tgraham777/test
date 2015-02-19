require "minitest"
require "minitest/autorun"
require_relative "bubble_sort"

class BubbleSortTest < Minitest::Test
  def test_it_exists
    assert BubbleSort
  end

  def test_it_sorts_one_element
    bs = BubbleSort.new
    assert_equal [1], bs.sort([1])
  end

  def test_it_sorts_two_elements_already_sorted
    bs = BubbleSort.new
    assert_equal [1,2], bs.sort([1,2])
  end

  def test_it_swaps_indices
    bs = BubbleSort.new
    numbers = [2,1]
    assert_equal [1,2], bs.swap(numbers, 0, 1)
  end

  def test_it_sorts_two_elements_not_sorted
    bs = BubbleSort.new
    assert_equal [1,2], bs.sort([2,1])
  end

  def test_it_sorts_array_of_3_elements
    bs = BubbleSort.new
    numbers = [1, 3, 2]
    assert_equal [1, 2, 3], bs.sort(numbers)
  end

  def test_it_sorts_badly
    bs = BubbleSort.new
    numbers = [3, 2, 1]
    assert_equal [1, 2, 3], bs.sort(numbers)
    #this tells us we need to go back to beginning after swap
  end

  def test_harder_test
    bs = BubbleSort.new
    numbers = [4,5,8,1,6,4]
    assert_equal [1,4,4,5,6,8], bs.sort(numbers)
  end

end
