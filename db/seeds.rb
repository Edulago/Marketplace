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

products_data = [
  {
    title: "iPhone 15 Pro",
    description: "Smartphone Apple com chip A17 Pro e câmera avançada",
    price: 8999.90,
    category: Category.find_by(name: "Smartphone"),
    user: user,
    image_name: "iPhone 15 Pro.webp"
  },
  {
    title: "Samsung Galaxy S24",
    description: "Top de linha da Samsung com excelente desempenho",
    price: 5999.90,
    category: Category.find_by(name: "Smartphone"),
    user: user,
    image_name: "Samsung Galaxy S24.webp"
  },
  {
    title: "MacBook Air M4",
    description: "Notebook leve e poderoso com chip M4, 16 gb, 1 TB SSD",
    price: 10999.90,
    category: Category.find_by(name: "Computador"),
    user: user,
    image_name: "MacBook Air M4.webp"
  },
  {
    title: "Dell XPS 13",
    description: "Ultrabook premium com tela infinita",
    price: 8999.90,
    category: Category.find_by(name: "Computador"),
    user: user,
    image_name: "Notebook Dell Xps.webp"
  },
  {
    title: "PlayStation 5",
    description: "Console de nova geração da Sony",
    price: 4399.90,
    category: Category.find_by(name: "Games"),
    user: user,
    image_name: "PlayStation 5.webp"
  }
]

products_data.each do |attributes|
  image_name = attributes.delete(:image_name)
  product = Product.create!(attributes)

  next if image_name.blank?

  image_path = Rails.root.join("app/assets/images", image_name)
  next unless File.exist?(image_path)

  product.image.attach(
    io: File.open(image_path),
    filename: image_name,
    content_type: Marcel::MimeType.for(Pathname.new(image_path))
  )
end