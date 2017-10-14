require_relative 'test_helper'

class EnigmaTest < Minitest::Test
  def test_enigma_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_encryption_accepts_one_two_or_three_arguments
    enigma = Enigma.new

    assert enigma.encrypt("hello world")
    assert enigma.encrypt("hello world", "12345")
    assert enigma.encrypt("hello world", "12345", Date.today)
  end

  def test_enigma_has_key_by_default
    enigma = Enigma.new

    assert_instance_of String, enigma.random_key
  end

  def test_enigma_has_date_by_default
    enigma = Enigma.new

    assert_instance_of Date, enigma.default_date
  end

  def test_enigma_has_characters_by_default
    enigma = Enigma.new

    assert_instance_of Hash, enigma.characters
  end

  def test_encrypt_outputs_offset
    enigma = Enigma.new

    assert_equal [16, 25, 42, 54], enigma.encrypt("hello world", "12345", Date.today)
  end

end