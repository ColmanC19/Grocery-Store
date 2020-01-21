require 'rails_helper'

describe Product do
  it { should have_many(:Reviews) }
  it { should validate_length_of(:name).is_at_most(100) }

  it("titleizes the name of an product") do
  product = Product.create({name: "giant steps", genre: "jazz"})
  expect(product.name()).to(eq("Giant Steps"))
end
end
