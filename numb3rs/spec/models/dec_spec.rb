require "spec_helper"

describe "Declaration" do
  describe ".create" do
    it "gets the declaration of independence and converts to an array of words" do
      url = "http://constitution.org/usdeclar.txt"
      declaration = Declaration.create(url:url)
      expect(declaration.words.count).to_not be 0
    end
  end
end
