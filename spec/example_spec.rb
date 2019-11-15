require "spec_helper"
require_relative "../lib/example"

RSpec.describe Example do
  describe "#my_method" do
    it "returns a string" do
      expect(Example.new.my_method).to eq("return value")
    end
  end
end
