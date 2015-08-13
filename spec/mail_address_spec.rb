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

  describe('#street_address') do
    it("returns the street address") do
      test_mail = Mail_address.new({:street_address => "123 Test St.", :city => "Portland", :state => "OR", :zip => "97204", :type => "Work"})
      expect(test_mail.street_address()).to(eq("123 Test St."))
    end
  end

  describe('#street_address') do
    it("returns the street address") do
      test_mail = Mail_address.new({:street_address => "123 Test St.", :city => "Portland", :state => "OR", :zip => "97204", :type => "Work"})
      expect(test_mail.street_address()).to(eq("123 Test St."))
    end
  end

end
