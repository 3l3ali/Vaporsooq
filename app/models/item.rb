class Item < ApplicationRecord

  belongs_to :user

  validates :title , presence: true
  validates :price , presence: true, length: { minimum: 0 }
  validates :type , presence: true
  validates :description , presence: true


   enum type: {
    kits: 0,
    mods: 1,
    tanks: 2,
    jucies: 3,
    accessories: 4,
    combo: 5
  }

end
