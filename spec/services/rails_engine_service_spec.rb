require 'rails_helper'

RSpec.describe RailsEngineService do
  it "return all merchants" do
    merchants = RailsEngineService.get_all_merchants

    expect(merchants).to be_a(Hash)
    expect(merchants[:data].count).to eq(100)
    expect(merchants[:data][0].keys).to eq([:id, :type, :attributes])
    expect(merchants[:data][0][:id]).to be_a(String)
    expect(merchants[:data][0][:type]).to be_a(String)
    expect(merchants[:data][0][:attributes][:name]).to be_a(String)
  end

  it "return merchant items" do
    merchant_items = RailsEngineService.merchant_items(1)

    expect(merchant_items).to be_a(Hash)
    expect(merchant_items[:data][0].keys).to eq([:id, :type, :attributes])
    expect(merchant_items[:data][0][:id]).to be_a(String)
    expect(merchant_items[:data][0][:type]).to be_a(String)
    expect(merchant_items[:data][0][:attributes][:name]).to be_a(String)
  end
end
