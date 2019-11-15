class FirstService
  def initialize(other_service)
    @other_service = other_service
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

other_service = SecondService.new
puts FirstService.new(other_service).my_method
