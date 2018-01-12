class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user

  validates :title , presence: true
  validates :price , presence: true, length: { minimum: 0 }
  validates :item_type , presence: true
  validates :description , presence: true


   enum item_type: {
    kit: 0,
    mod: 1,
    tank: 2,
    jucie: 3,
    accessories: 4,
    combo: 5
  }

end
