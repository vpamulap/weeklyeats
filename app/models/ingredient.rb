class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :item

  def name=(name)
    # check if item_unit has been set first
    if self.item.nil?
      self.item = Item.find_or_new_by_name(name)
      self.item.unit = @unit unless @unit.nil?
    else
      self.item.name = name
    end
  end
        
  def unit=(unit)
    if self.item.nil?
      @unit = unit
    else
      self.item.unit = unit
    end
  end
  
  def name
      return self.item.name unless self.item.nil?
      return ""
  end
  
  def unit
      return self.item.unit unless self.item.nil?
      return ""
  end
  

end