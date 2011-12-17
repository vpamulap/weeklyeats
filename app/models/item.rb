class Item < ActiveRecord::Base
  has_many :ingredients, :dependent => :destroy
  has_many :recipes, :through => :ingredients
  
  def self.find_or_new_by_name(name)
    if (item = self.find_by_name(name))
      return item
    else
      item = Item.new(name:name)
    end
    return item
  end

end