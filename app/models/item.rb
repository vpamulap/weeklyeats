class Item < ActiveRecord::Base
  has_many :ingredients, :dependent => :destroy
  has_many :recipes, :through => :ingredients
end