class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: '')
  end

  def about

  end
end
