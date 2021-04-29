class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: Rails.application.credentials.stock_key)
    if params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
    end
  end

  def about

  end
end
