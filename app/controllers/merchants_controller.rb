class MerchantsController < ApplicationController

  def index
    @rails_engine = RailsEngineFacade.new(params)
  end

  def show
    facade = RailsEngineFacade.new(params)
    merchants = facade.merchant_info

    @merchant = merchants.find { |merchant| merchant.id == params[:merchant_id] }
    @merchant_items = facade.get_items
  end
end