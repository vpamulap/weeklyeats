class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :item
  
  before_create :create_item
  before_update :update_item
  
  attr_writer :name, :unit
  
  def name
    (self.item.nil?) ? "" : self.item.name
  end
  
  def unit
    (self.item.nil?) ? "" : self.item.unit
  end
  
  def create_item
    #creates if exception for seeds.rb which creates items manually and assigns ids
    self.item = Item.find_or_create_by_name(name:@name, unit:@unit) if item_id.nil?
  end
  
  def update_item
    self.item = Item.find_or_create_by_name(name:@name, unit:@unit)
  end
end