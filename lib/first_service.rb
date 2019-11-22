class FirstService
  def initialize(other_service, parser)
    @other_service = other_service
    @parser = parser
  end

  def my_method
    @parser.parse(@other_service.other_method)
  end
end

class SecondService
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def other_method
    "My name is #{name}"
  end
end

class ThirdService
  def other_method
    "Main Str. 1"
  end
end

class AddressParser
  def self.parse(input)
    input.downcase
  end
end

class NameParser
  def self.parse(input)
    input.upcase
  end
end

second_service = SecondService.new("John")
third_service = ThirdService.new
puts FirstService.new(second_service, NameParser).my_method
puts FirstService.new(third_service, AddressParser).my_method
