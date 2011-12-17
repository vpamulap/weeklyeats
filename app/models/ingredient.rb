class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :item

  #could use an invisible attribute in the field to read item_name and item_unit then nicely find or create an item
  def item_name=(name)
    # check if item_unit has been set first
    if self.item.nil?
      self.item = Item.find_or_new_by_name(name)
      self.item.unit = @unit unless @unit.nil?
    else
      self.item.name = name
    end
  end
        
  def item_unit=(unit)
    if self.item.nil?
      @unit = unit
    else
      self.item.unit = unit
    end
  end
  
  def item_name
    if self.item
      return self.item.name
    else
      return ""
    end
  end
  
  def item_unit
    if self.item
      return self.item.unit
    else
      return ""
    end
  end
  

end