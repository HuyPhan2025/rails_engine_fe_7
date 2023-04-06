class RailsEngineService
  def self.get_all_merchants
    JSON.parse(conn.get("api/v1/merchants").body, symbolize_names: true)
  end

  def self.merchant_items(id)
    JSON.parse(conn.get("api/v1/merchants/#{id}/items").body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "http://localhost:3000/")
  end
end