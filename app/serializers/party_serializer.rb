class PartySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :id
  attribute :items do |object|
    object.items.map do |c|
      {name: c.name, id: c.id, category: c.category.name, category_id: c.category.id}
    end
     
  end

end
