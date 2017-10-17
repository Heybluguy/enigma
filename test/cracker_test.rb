require_relative 'test_helper'
# i76pzdcsaxy1ybe1s
# key 36518 and date 161017
# hello world ..end..

class CrackerTest < Minitest::Test
  def test_it_exist
    cracker = Cracker.new

    assert_instance_of Cracker, cracker
  end

  def test_encrypted_end_values
    cracker = Cracker.new
    encryption = "cl8sjefvmsze7f1u.fu"
    crack_offset = (-3)
    result = cracker.encrypted_end_values(encryption, crack_offset)

    assert_equal [33, 6, 27, 21], result
  end

  def test_crack
    cracker = Cracker.new
    encryption = "cl8sjefvmsze7f1u.fu"

    assert_equal '30147', cracker.crack(encryption, '161017')
  end



end
