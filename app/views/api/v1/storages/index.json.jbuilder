json.array! @storages do |storage|
    json.id storage.id
    json.name storage.name
    json.location storage.location
    json.commodities storage.commodities do |commodity|
        json.name commodity.name
        json.price commodity.price
        json.quantity commodity.quantity
      end
end