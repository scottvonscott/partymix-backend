class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name

    attributes :categories do |object|
    categories = []
    categories << object.category
  end
end
