class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :photo, PhotoUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :items

  validates :city, presence: true
  validates :contact_info, presence: true
  validates :terms_of_service, acceptance: true


  enum user_type: {
    normal: 0,
    premium: 1
  }
  enum city: {
    Irbid: 0,
    Amman: 1,
    Albalqa: 2,
    Aqaba: 3,
    Zarqa: 4,
    Jarash: 5,
    AlTafeleh: 6,
    Ajloun: 7,
    Karak: 8,
    Madaba: 9,
    Maan: 10,
    Mafraq:11
  }

  def self.cities_for_select
    cities.to_a.unshift(["anywhere",""])
  end
end
