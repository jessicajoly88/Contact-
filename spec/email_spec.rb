require('rspec')
require('email')

describe(Email) do

  describe('#address') do
    it("returns the email address") do
      test_address = Email.new({:address =>"jessicabanana@gmail.com",:type => "Home"})
      expect(test_address.address()).to(eq("jessicabanana@gmail.com"))
    end
  end

end
