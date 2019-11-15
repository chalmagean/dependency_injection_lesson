require "spec_helper"
require_relative "../lib/first_service"

RSpec.describe FirstService do
  describe "#my_method" do
    it "returns a string" do
      other_service = double(other_method: "return value")
      expect(FirstService.new(other_service).my_method).to eq("return value")
    end
  end
end
