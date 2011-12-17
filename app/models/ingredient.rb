class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :item
  
  def name
    self.item.name
  end
  
  def unit
    self.item.unit
  end
  
end