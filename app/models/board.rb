class Board < ActiveRecord::Base
  attr_accessible :name
  has_many :comments, dependent: :destroy
  validates :name , presence: true, length: { in: 4..32}, uniqueness: true
end
