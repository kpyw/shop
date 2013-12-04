class Product < ActiveRecord::Base

  has_many :orders, :through => :items

end
