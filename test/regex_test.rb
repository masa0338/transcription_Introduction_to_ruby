require 'minitest/autorun'
require './lib/regex'

class RegexTest < MiniTest::Test

  def test_regex
    regex = Regex.new('123-456-789')
    e = assert_raises RegexpError do
      regex.match('[1-6+')
    end
    assert_equal 'Invalid pattern: premature end of char-class: /[1-6+/', e.message

    result = regex.match('[1-6]+')
    assert_equal 2, result.size
    assert_equal '123', result[0]
    assert_equal '456', result[1]

    regex = Regex.new('abc-def-ghi')
    result = regex.match('[1-6]+')
    assert_equal 0, result.size
  end

end