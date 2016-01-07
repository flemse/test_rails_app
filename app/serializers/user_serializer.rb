class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :posts
  has_many :cars
end
