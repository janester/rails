class StocksController < ApplicationController
  def enter
  end

  def show
    @sym = params[:sym].upcase
    @quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @sym)[@sym].lastTrade
    # @quote = number_to_currency(@quote)
  end

end
