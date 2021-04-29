class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: Rails.application.credentials.stock_key)
    if params[:ticker] == ""
      @nothing = "Hey! You Forgot To Enter A Symbol!"
    elsif params[:ticker]
      begin
        @stock = StockQuote::Stock.quote(params[:ticker])
      rescue
        @error = "Hey! That Stock Symbol Doesn't Exist. Please Try Again!"
      end
    end
  end

  def about

  end
end
