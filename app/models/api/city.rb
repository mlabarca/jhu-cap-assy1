class Api::City < ActiveRecord::Base
  validates :name, uniqueness: true
end
