class InfoSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :phone, :email

  has_many :skills
  has_many :socials
end
