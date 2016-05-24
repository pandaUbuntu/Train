require "minitest/autorun"
require "minitest/mock"

class String
  def search_del(del)
    array_result = Array.new()
    array = self.split(del)
    for idx in 0..array.size - 1
	  array_result.push(array.join(del))
	  array.delete(array.last)
    end
    puts array_result 
  end
end

class StringTest < Minitest::test
  def test_search_del
    str = String.new
	str = "aaa.bbb.yyy"
	array = ["aaa.bbb.yyy", "aaa.bbb", "aaa"]
	assert_equal(array, str.search_del("."))
  end
end
