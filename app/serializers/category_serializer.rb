class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :id, :items
end
