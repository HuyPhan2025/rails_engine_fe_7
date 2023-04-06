require 'rails_helper'

RSpec.describe Merchant do
  let!(:turing_school) { Merchant.new({ id: 52, attributes: { name: "Turing School"}}) }

  describe "#initialize" do
    it "exists" do
      expect(turing_school).to be_a(Merchant)
    end

    it "has a name attribute" do
      expect(turing_school.id).to eq(52)
      expect(turing_school.name).to eq("Turing School")
    end
  end
end