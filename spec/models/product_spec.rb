require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "saves a new product" do
      a_category = Category.new(name: "New Category")
      a_product = Product.new(name: "Product Name", price: 100, quantity: 10, category: a_category)
      expect(a_product).to be_valid
    end

    it "validates name" do
      a_category = Category.new(name: "New Category")
      a_product = Product.new(name: nil, price: 100, quantity: 10, category: a_category)
      expect(a_product).to be_invalid
    end

    it "validates price" do
      a_category = Category.new(name: "New Category")
      a_product = Product.new(name: "Product Name", quantity: 10, category: a_category)
      expect(a_product).to be_invalid
    end

    it "validates quantity" do
      a_category = Category.new(name: "New Category")
      a_product = Product.new(name: "Product Name", price: 100, quantity: nil, category: a_category)
      expect(a_product).to be_invalid
    end

    it "validates category" do
      a_category = Category.new(name: "New Category")
      a_product = Product.new(name: "Product Name", price: 100, quantity: 10, category: nil)
      expect(a_product).to be_invalid
    end
  end
end
