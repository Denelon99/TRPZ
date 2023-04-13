json.array! @commodities do |commodity|
    json.id commodity.id
    json.name commodity.name
    json.price commodity.price
    json.quantity commodity.quantity
end