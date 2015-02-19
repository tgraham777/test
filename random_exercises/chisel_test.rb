require "minitest"
require "minitest/autorun"
require_relative "chisel.rb"

class CreditCheckTest < Minitest::Test
  def test_it_exists
    parser = Chisel.new
  end

  def test_parse
    chisel = Chisel.new
    parser = chisel.parse("*hello*")
    assert_equal "<em>hello</em>", parser
  end

end
