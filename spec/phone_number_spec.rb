require('rspec')
require('phone_number')

describe(Phone_number) do

  describe("#area_code") do
    it("returns the area code") do
      test_number = Phone_number.new({:area_code => "(503)", :number => "555-5452",:type => "Work"})
      expect(test_number.area_code()).to(eq("(503)"))
    end
  end

  describe('#number') do
    it("returns the number") do
      test_number = Phone_number.new({:area_code => "(503)", :number => "555-5452",:type => "Work"})
      expect(test_number.number()).to(eq("555-5452"))
    end
  end

  describe('#type') do
    it("returns the type of the number") do
      test_number = Phone_number.new({:area_code => "(503)", :number => "555-5452",:type => "Work"})
      expect(test_number.type()).to(eq("Work"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Phone_number.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("pushes a phone number to an array of saved phone numbers") do
      test_number = Phone_number.new({:area_code => "(503)", :number => "555-5452",:type => "Work"})
      test_number.save()
      expect(Phone_number.all()).to(eq([test_number]))
    end
  end

  describe('.clear') do
    it("empties out the array") do
      test_number = Phone_number.new({:area_code => "(503)", :number => "555-5452",:type => "Work"})
      test_number.save()
      expect(Phone_number.clear()).to(eq([]))
    end
  end

  describe('#id') do
    it("returns the id of the phone number") do
      test_number = Phone_number.new({:area_code => "(503)", :number => "555-5452",:type => "Work"})
      test_number.save()
      expect(test_number.id()).to(eq(1))
    end
  end

end
