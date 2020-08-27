class PartySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :id
  attribute :items do |object|
    byebug
    "#{object.items} (#{object.items.category.name})"
  end

end
