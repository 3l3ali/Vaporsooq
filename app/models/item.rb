class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user

  validates :title , presence: true
  validates :price , presence: true, length: { minimum: 0 }
  validates :item_type , presence: true
  validates :description , presence: true
  validates :condition , presence: true


   enum item_type: {
    kit: 0,
    mod: 1,
    tank: 2,
    jucie: 3,
    accessories: 4,
    combo: 5
  }

  enum condition: {
    New: 0,
    Used: 1
  }

  def self.item_type_for_select
    item_types.to_a.unshift(["all",""])
  end

  def self.condition_for_select
    conditions.to_a.unshift(["all",""])
  end

end
