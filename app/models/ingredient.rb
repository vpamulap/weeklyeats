class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :item
  attr_accessor :item_name, :item_unit

  
  def name
    self.item.name
  end
  
  def unit
    self.item.unit
  end
  

end