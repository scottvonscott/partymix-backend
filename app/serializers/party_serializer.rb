class PartySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title
  # attributes :items do |object|
  #   items = []
  #   items << object.items
  # end
  
  has_many :items


end
