require "minitest"
require "minitest/autorun"
require_relative "cryptographer"
#require_relative calls the current/related directory so
#that ./ does not have to be added to the file path name


class CryptographerTest < Minitest::Test
  def test_it_runs
    assert true
  end

  def test_cryptographer_exists
    assert Cryptographer
  end

  #test that a corresponds with n, y with l, etc.
  #test encrypt on single letter

  def test_it_encrypts_a_single_char ###
    cryptographer = Cryptographer.new
    assert_equal "n", cryptographer.encrypt_1("a")
  end

  def test_it_knows_the_alphabet
    cryptographer = Cryptographer.new
    abet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    assert_equal abet, cryptographer.alphabet
  end

  def test_it_finds_position_of_a_character
    cryptographer = Cryptographer.new
    assert_equal 0, cryptographer.position("a")
  end

  def test_it_encrypts_multiple ###
    cryptographer = Cryptographer.new
    assert_equal "nq", cryptographer.encrypt_mult("ad")
  end

  def test_it_finds_character
    cryptographer = Cryptographer.new
    assert_equal "n", cryptographer.character(13)
  end

  def test_it_rotates
    cryptographer = Cryptographer.new
    assert_equal 13, cryptographer.rot(0)
  end

end
