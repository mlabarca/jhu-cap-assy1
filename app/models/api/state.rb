class Api::State
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  validates :name, uniqueness: true
end
