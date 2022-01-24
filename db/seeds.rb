puts 'Creating states'
STATES.each do |data|
  State.where(full_name: data[0])
        .first_or_create(
          full_name: data[0],
          abbreviation: data[1],
          service_offered: data[2],
          minimum_age: data[3]
        )
end
puts 'Creating categories'
CATEGORIES.each do |category_name|
  Category.where(name: category_name).first_or_create(name: category_name)
end
puts 'Creating products'
PRODUCTS.each do |product|
  attributes = {
    name: product[:name],
    category: Category.find_or_initialize_by(name: product[:category]),
    ndc: product[:ndc],
    qty: product[:qty],
    price: product[:price],
    instructions: product[:instructions]
  }
  Product.where(name: product[:name]).first_or_create(attributes)
end
puts "Total states: #{State.count}"
puts "Total categories: #{Category.count}"
puts "Total products: #{Product.count}"
puts 'Done!'