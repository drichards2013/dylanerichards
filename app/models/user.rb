class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable, :recoverable,
          :rememberable, :trackable, :validatable

  geocoded_by :full_street_address   # can also be an IP address
          # auto-fetch coordinates
end
