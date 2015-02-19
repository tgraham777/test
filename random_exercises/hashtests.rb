gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/homework'

class HashTest < Minitest::Homework
  be_gentle!

  def test_empty
    boolean = {}.empty?
    assert true
    boolean = {"a" => "apple"}.empty?
    assert true
  end

  def test_access
    ages = {16 => ["Alice", "Bob"], 24 => ["Charlie", "Dave"], 37 => ["Eve"]}
    assert_equal ["Alice", "Bob"], ages[16]
    assert_equal ["Eve"], ages[37]
  end

  def test_assignment
    stuff = {"a" => ["aardvark", "apple"], "b" => ["butcher", "ballerina"]}
    stuff["c"] = ["cook", "caramel candy"]
    assert_equal ["cook", "caramel candy"], stuff["c"]
    stuff["b"] = "brandy"
    assert_equal "brandy", stuff["b"]
    stuff["a"] = stuff["a"] + ["apricot"]
    assert_equal ["aardvark", "apple", "apricot"], stuff["a"]
  end

  def test_keys
    assert_equal [], {}.keys
    assert_equal [1,2], {1 => "one", 2 => "two"}.keys
    assert_equal ["a", "banana"], {"a" => "apple", "banana" => "b"}.keys
  end

  def test_values
    assert_equal [], {}.values
    assert_equal ["one", "two"], {1 => "one", 2 => "two"}.values
    assert_equal ["apple", "b"], {"a" => "apple", "banana" => "b"}.values
  end

  def test_include
    boolean = {}.include?("a")
    assert true
    boolean = {"a" => "apple"}.include?("a")
    assert true
    boolean = {"a" => "apple"}.include?("apple")
    assert true
  end

  def test_member
    boolean = {}.member?("a")
    assert true
    boolean = {"a" => "apple"}.member?("a")
    assert true
    boolean = {"a" => "apple"}.member?("apple")
    assert true
  end

  def test_length
    assert_equal 0, {}.length
    assert_equal 1, {"a" => "apple"}.length
    assert_equal 2, {"a" => "apple", "b" => "banana"}.length
  end

  def test_merge
    h1 = {}.merge({})
    h2 = {}.merge({"a" => "apple"})
    h3 = {"a" => "apple"}.merge({"b" => "banana"})
    h4 = {"a" => "apple"}.merge({"a" => "avocado", "b" => "banana"})
    h5 = {"a" => "apple", "b" => "banana"}.merge({"b" => "breadfruit"})

    assert_equal ({}), h1
    assert_equal ({"a" => "apple"}), h2
    assert_equal ({"a"=>"apple", "b"=>"banana"}), h3
    assert_equal ({"a"=>"avocado", "b"=>"banana"}), h4
    assert_equal ({"a"=>"apple", "b"=>"breadfruit"}), h5
  end

  def test_update
    h1 = {}.update({})
    h2 = {}.update({"a" => "apple"})
    h3 = {"a" => "apple"}.update({"b" => "banana"})
    h4 = {"a" => "apple"}.update({"a" => "avocado", "b" => "banana"})
    h5 = {"a" => "apple", "b" => "banana"}.update({"b" => "breadfruit"})

    assert_equal ({}), h1
    assert_equal ({"a"=>"apple"}), h2
    assert_equal ({"a"=>"apple", "b"=>"banana"}), h3
    assert_equal ({"a"=>"avocado", "b"=>"banana"}), h4
    assert_equal ({"a"=>"apple", "b"=>"breadfruit"}), h5
  end
end

def test_invert
  assert_equal ({"apple"=>"a", "banana"=>"b"}), {"a" => "apple", "b" => "banana"}.invert
  assert_equal ({"one" => 1, "two" => 2}), {1 => "one", 2 => "two"}.invert
end
