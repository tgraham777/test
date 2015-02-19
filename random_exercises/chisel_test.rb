require "minitest"
require "minitest/autorun"
require_relative "chisel.rb"

class ChiselTest < Minitest::Test
  #def test_it_exists
  #  parser = Chisel.new
  #end

  def test_emphasis_1
    chisel = Chisel.new
    parser = chisel.parse_emphasis("*hello* *my* *friend*")
    assert_equal "<em>hello</em> <em>my</em> <em>friend</em>", parser # my <em>friend</em>", parser
  end

end
