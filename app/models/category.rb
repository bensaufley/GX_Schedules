class Category < ActiveRecord::Base
  has_many :gx_classes
  has_many :gx_class_sets, through: :gx_classes
  
  validates :name, presence: true, uniqueness: true

end
