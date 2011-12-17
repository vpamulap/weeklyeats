class Recipe < ActiveRecord::Base
  has_many :ingredients, :dependent => :destroy
  has_many :items, :through => :ingredients
end