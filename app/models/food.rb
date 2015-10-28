class Food < ActiveRecord::Base
  belongs_to :users
  validates(:type, :presence => true)
end
