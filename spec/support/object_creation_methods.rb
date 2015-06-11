def create_list(overrides = {})
  List.create!({
    name: 'Avengers vs X-Men Crossover'
    }.merge(overrides))
end

def create_list_item(list, overrides = {})
  ListItem.create!({
    name: 'AVX #1',
    list_id: list.id,
    complete: false
  }.merge(overrides))
end
