class StocksController < ApplicationController
  def index
    @stocks = @current_user.stocks
  end

  def new
    @stock = Stock.new
  end

  def create
    sym = params[:stock][:symbol]
    if Stock.where(:symbol => sym).empty?
      @stock = Stock.create(params[:stock])
    else
      @stock = Stock.where(:symbol => sym).first
      @stock.quantity += params[:stock][:quantity].to_i
    end
    @stock.bought_price = @stock.get_quote
    @stock.save
    @current_user.stocks << @stock
    @current_user.cash_balance -= @stock.bought_price * @stock.quantity
    @current_user.stock_balance += @stock.bought_price * @stock.quantity
    @current_user.save
    @stocks = @current_user.stocks

  end

  def chart
    stock = Stock.find(params[:id])
    price = stock.get_quote
    render :json => {price:price, id:stock.id, op:stock.bought_price, sym:stock.symbol}
  end

end
