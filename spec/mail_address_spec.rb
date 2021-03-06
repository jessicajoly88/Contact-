require('rspec')
require('mail_address')

describe(Mail_address) do

  describe('#street_address') do
    it("returns the street address") do
      test_mail = Mail_address.new({:street_address => "123 Test St.", :city => "Portland", :state => "OR", :zip => "97204", :type => "Work"})
      expect(test_mail.street_address()).to(eq("123 Test St."))
    end
  end

  describe('#city') do
    it("returns the city") do
      test_mail = Mail_address.new({:street_address => "123 Test St.", :city => "Portland", :state => "OR", :zip => "97204", :type => "Work"})
      expect(test_mail.city()).to(eq("Portland"))
    end
  end

  describe('#state') do
    it("returns the state") do
      test_mail = Mail_address.new({:street_address => "123 Test St.", :city => "Portland", :state => "OR", :zip => "97204", :type => "Work"})
      expect(test_mail.state()).to(eq("OR"))
    end
  end

  describe('#zip') do
    it("returns the zip") do
      test_mail = Mail_address.new({:street_address => "123 Test St.", :city => "Portland", :state => "OR", :zip => "97204", :type => "Work"})
      expect(test_mail.zip()).to(eq("97204"))
    end
  end

  describe('#type') do
    it("returns the type") do
      test_mail = Mail_address.new({:street_address => "123 Test St.", :city => "Portland", :state => "OR", :zip => "97204", :type => "Work"})
      expect(test_mail.type()).to(eq("Work"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Mail_address.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("pushes a mail address to an array of saved mail addresses") do
      test_mail = Mail_address.new({:street_address => "123 Test St.", :city => "Portland", :state => "OR", :zip => "97204", :type => "Work"})
      test_mail.save()
      expect(Mail_address.all()).to(eq([test_mail]))
    end
  end

  describe('.clear') do
    it("empties out the array") do
      test_mail = Mail_address.new({:street_address => "123 Test St.", :city => "Portland", :state => "OR", :zip => "97204", :type => "Work"})
      test_mail.save()
      expect(Mail_address.clear()).to(eq([]))
    end
  end

  describe('#id') do
    it("returns the id of the mail address") do
      test_mail = Mail_address.new({:street_address => "123 Test St.", :city => "Portland", :state => "OR", :zip => "97204", :type => "Work"})
      test_mail.save()
      expect(test_mail.id()).to(eq(1))
    end
  end

  describe('.find') do
    it("returns the phone number by its id") do
      test_mail = Mail_address.new({:street_address => "123 Test St.", :city => "Portland", :state => "OR", :zip => "97204", :type => "Work"})
      test_mail.save()
      test_mail2 = Mail_address.new({:street_address => "456 Duh Ave.", :city => "Vancouver", :state => "WA", :zip => "98685", :type => "Home"})
      test_mail2.save()
      expect(Mail_address.find(test_mail.id())).to(eq(test_mail))
    end
  end

end
