require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:brownie) {Dessert.new("brownie", 5, "Ara")}
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq("brownie")
    end
    it "sets a quantity" do 
      expect(brownie.quantity).to eq(5)
    end
    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to eq([])
    end
    it "raises an argument error when given a non-integer quantity" do
      expect {brownie.quantity("two")}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(brownie.add_ingredient("coco")).to eq(["milk", "sugar", "flour", "coco"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(brownie.mix!).to eq(["coco", "flour", "sugar", "milk"])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      expect(brownie.eat(2)).to eq(3)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect(brownie.eat(7)).to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      expect(brownie.serve).to eq("Ara has made 5 brownies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      expect("Ara").to receive(:bake).with(brownie) 
    end
  end
end
