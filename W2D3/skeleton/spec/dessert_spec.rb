require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:c1) {Dessert.new("flan", 10, "Enrique") }
  let(:c2) {Dessert.new("cheesecake", "1", "Isabel")}
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do 
      expect(c1.type).to eq("flan")
    end

    it "sets a quantity" do 
      expect(c1.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do 
      expect(c1.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect(c2.quantity).to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      c1.add_ingredient("butter")
      expect(c1.ingredients).to eq(["butter"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      c1.mix!  
      expect(c1.ingredients.sorted).to eq(c1.ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      c1.eat(5)
      expect(c1.quantity).to eq(5)
    end

    it "raises an error if the amount is greater than the quantity" do 
      c1.eat(15)
      expect(c1.quantity).to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      expect(c1.serve).to eq("Enrique has made 10 flans")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
    end
  end
end
