class Loaction < ApplicationRecord
 
 geocoded_by :address 
 after_validation :geocoded, :if => :address_changed?
end
