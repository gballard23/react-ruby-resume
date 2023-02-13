class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name
  
  belongs_to :info
end
