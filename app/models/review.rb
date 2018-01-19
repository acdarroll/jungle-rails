class Review < ActiveRecord::Base

  belongs_to :product, dependent: :destroy
  belongs_to :user

  validates :product, presence: true
  validates :user, presence: true
  validates :rating, presence: true, numericality: {only_integer: true}

end
