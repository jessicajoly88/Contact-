require('rspec')
require('mail_address')

describe(Mail_address) do

  describe('#street_address') do
    it("returns the street address") do
      test_mail = Mail_address.new({:street_address => "123 Test St.", :city => "Portland", :state => "OR", :zip => "97204", :type => "Work"})
      expect(test_mail.street_address()).to(eq("123 Test St."))
    end
  end

end
