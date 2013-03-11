# == Schema Information
#
# Table name: stocks
#
#  id           :integer          not null, primary key
#  symbol       :string(255)
#  bought_price :decimal(, )
#  quantity     :integer
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Stock < ActiveRecord::Base
  attr_accessible :symbol, :bought_price, :quantity
  belongs_to :user

  def get_quote
    begin
      YahooFinance::get_quotes(YahooFinance::StandardQuote, self.symbol)[self.symbol].lastTrade
    rescue
      retry
    end
  end
end
