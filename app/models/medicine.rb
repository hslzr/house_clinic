class Medicine < ApplicationRecord
  validates_presence_of :name, :brand, :unit
end
