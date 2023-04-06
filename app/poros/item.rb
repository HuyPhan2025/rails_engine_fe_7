class Item
  attr_reader :name, :id, :description, :unit_price, :merchant_id

  def initialize(info)
    @name = info[:attributes][:name]
    @description = info[:attributes][:description]
    @unit_price = info[:attributes][:unit_price]
    @merchant_id = info[:attributes][:merchant_id]
  end
end