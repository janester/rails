# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  released   :date
#  publisher  :string(255)
#  genre      :string(255)
#  cover      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ActiveRecord::Base
  attr_accessible :title, :released, :publisher, :genre, :cover, :author_id
  belongs_to :author
end
