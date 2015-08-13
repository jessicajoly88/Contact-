require('rspec')
require('phone_number')

describe(Phone_number) do

  describe("#area_code") do
    it("returns the area code") do
      test_number = Phone_number.new({:area_code => "(503)", :number => "555-5452",:type => "Work"})
      expect(test_number.area_code()).to(eq("(503)"))
    end
  end


end
