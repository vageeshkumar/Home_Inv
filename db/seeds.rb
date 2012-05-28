

Category.delete_all
['Electronics', 'Furniture', 'Utensils'].each do |t|
  Category.find_or_create_by_name(t)
end
