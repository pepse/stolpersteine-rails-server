class Location < ActiveRecord::Base
  has_many :biographies, dependent: :destroy
end
