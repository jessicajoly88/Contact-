require('rspec')
require('email')

describe(Email) do

  describe('#address') do
    it("returns the email address") do
      test_address = Email.new({:address =>"jessicabanana@gmail.com",:type => "Home"})
      expect(test_address.address()).to(eq("jessicabanana@gmail.com"))
    end
  end

  describe('#type') do
    it("returns the type of the email address") do
      test_address = Email.new({:address =>"jessicabanana@gmail.com",:type => "Home"})
      expect(test_address.type()).to(eq("Home"))
    end
  end

end
