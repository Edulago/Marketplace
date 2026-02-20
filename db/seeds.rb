Product.destroy_all

["Hardware", "Computador", "Games", "Smartphone"].each do |category_name|
  Category.find_or_create_by!(name: category_name)
end

user = User.find_or_initialize_by(email: "admin@admin.com")
user.name = "admin"
user.phone = "11999999999"
user.password = "123456" if user.new_record?
user.password_confirmation = "123456" if user.new_record?
user.save!

Product.create!([
  {
    title: "iPhone 15 Pro",
    description: "Smartphone Apple com chip A17 Pro e câmera avançada",
    price: 8999.90,
    category: Category.find_by(name: "Smartphone"),
    user: user
  },
  {
    title: "Samsung Galaxy S24",
    description: "Top de linha da Samsung com excelente desempenho",
    price: 5999.90,
    category: Category.find_by(name: "Smartphone"),
    user: user
  },
  {
    title: "MacBook Air M4",
    description: "Notebook leve e poderoso com chip M4, 16 gb, 1 TB SSD",
    price: 10999.90,
    category: Category.find_by(name: "Computador"),
    user: user
  },
  {
    title: "Dell XPS 13",
    description: "Ultrabook premium com tela infinita",
    price: 8999.90,
    category: Category.find_by(name: "Computador"),
    user: user
  },
  {
    title: "PlayStation 5",
    description: "Console de nova geração da Sony",
    price: 4499.90,
    category: Category.find_by(name: "Games"),
    user: user
  }
])