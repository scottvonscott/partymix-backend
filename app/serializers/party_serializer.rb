class PartySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title
  has_many :items
end
