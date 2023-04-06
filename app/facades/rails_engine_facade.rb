class RailsEngineFacade

  def initialize(params)
    if params[:merchant_id].present?
      @id = params[:merchant_id]
    end
  end

  def merchant_info
    merchants = RailsEngineService.get_all_merchants
    merchants[:data].map do |merchant|
       Merchant.new(merchant)
    end
  end

  def get_items
    items = RailsEngineService.merchant_items(@id)
    items[:data].map do |item|
      Item.new(item)
    end
  end
end