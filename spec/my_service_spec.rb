require "spec_helper"
require_relative "../lib/first_service"

RSpec.describe FirstService do
  describe "#my_method" do
    it "returns a string" do
      allow_any_instance_of(SecondService).to receive(:other_method).and_return("return value")
      expect(FirstService.new.my_method).to eq("return value")
    end
  end
end
