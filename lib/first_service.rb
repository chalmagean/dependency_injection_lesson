class FirstService
  def initialize
    @other_service = SecondService.new
  end

  def my_method
    @other_service.other_method
  end
end

class SecondService
  def other_method
    "I am the second service"
  end
end

class ThirdService
  def other_method
    "I am the third service"
  end
end

puts FirstService.new.my_method
