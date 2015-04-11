class LineItem < ActiveRecord::Base
  belongs_to :picture
  belongs_to :cart

  def total_price
  	picture.price * quantity
  end

end
