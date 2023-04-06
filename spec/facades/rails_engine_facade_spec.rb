require 'rails_helper'
require './app/facades/rails_engine_facade'

RSpec.describe RailsEngineFacade do
  
  it "exists" do
    rails_engine_facade = RailsEngineFacade.new(empty: '') 
    expect(rails_engine_facade).to be_a(RailsEngineFacade)
  end

  it "can return merchant attributes" do
    all_merchants_info = RailsEngineFacade.new(empty: '')
    merchants = all_merchants_info.merchant_info

    expect(merchants.first.name).to eq("Schroeder-Jerde")
    expect(merchants.last.name).to eq("Glover Inc")
  end

  it "return merchant items" do
    all_merchant_items = RailsEngineFacade.new(id: 1)
    items = all_merchant_items.get_items

    items.each do |item|
      expect(item.name).to be_a(String)
      expect(item.description).to be_a(String)
      expect(item.unit_price).to be_a(Float)
      expect(item.merchant_id).to be_an(Integer)
    end
  end
end