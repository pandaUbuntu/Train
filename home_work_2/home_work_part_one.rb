class Task_one
	
  def initialize(size)
    @arr = Array.new(size){ Array.new(size){ rand(-10..10) } }
	puts "Start array: #{@arr}"
  end
  
  def decision
    @arr.flatten!.select!{ |n| n < 0 }
    puts "Negative numbers #{@arr} Summ: #{@arr.inject(:+)}"
  end
end

class Task_two

  def initialize
    @hash = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: 30, key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014}
	puts "Start array: #{@hash}"
  end
  
  def decision
    puts @hash.keys.select{ |k| k =~ /^yes/i }.size
  end

end

class TaskTest < Minitest::Test
  def test_first_task
    task_one = Task_one.new(3)
	task_one.stub(:rand, 0) do
	assert_equal(task_one.decision)
  end
  
  def test_second_task
    task_two = Task_two.new({'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: 30, key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014})
	assert_equal(5, task_two.decision)
  end
end

