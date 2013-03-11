# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  cash_balance    :decimal(, )      default(0.0)
#  stock_balance   :decimal(, )      default(0.0)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password, :password_confirmation, :cash_balance, :stock_balance
  has_many :stocks
end
