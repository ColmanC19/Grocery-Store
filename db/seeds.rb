Product.destroy_all
Review.destroy_all

50.times do ||
  products = []
  products.push(Product.create!(name: Faker::Commerce.product_name,
    cost: Faker::Number.decimal(l_digits: 2),
    country_of_origin: Faker::Address.country))
    products
    5.times do ||
      products.each do |product|
        Review.create!(
          # title: Faker::Company.buzzword,
          author: Faker::GreekPhilosophers.name,
          content_body: Faker::Lorem.paragraph_by_chars(number: 250),
          rating: Faker::Number.within(range: 1..5),
          :product_id => product.id)
        end
      end
    end

  p "Created #{Product.count} products and #{Review.count} reviews."
