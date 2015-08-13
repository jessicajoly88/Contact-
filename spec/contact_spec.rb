require('rspec')
require('contact')
require('email')
require('mail_address')
require('phone_number')

describe (Contact) do
  before() do
    Contact.clear()
  end

  describe('#first_name') do
    it("returns a first name") do
      test_contact = Contact.new({:first_name => "Betty",:last_name => "Boop", :job_title => "actress", :company => "Television Studio"})
      expect(test_contact.first_name()).to(eq("Betty"))
    end
  end

  describe('#last_name') do
    it("returns a last name") do
      test_contact = Contact.new({:first_name => "Betty",:last_name => "Boop", :job_title => "actress", :company => "Television Studio"})
      expect(test_contact.last_name()).to(eq("Boop"))
    end
  end

  describe('#job_title') do
    it("returns a job title") do
      test_contact = Contact.new({:first_name => "Betty",:last_name => "Boop", :job_title => "actress", :company => "Television Studio"})
      expect(test_contact.job_title()).to(eq("actress"))
    end
  end

  describe('#company') do
    it("returns a company") do
      test_contact = Contact.new({:first_name => "Betty",:last_name => "Boop", :job_title => "actress", :company => "Television Studio"})
      expect(test_contact.company()).to(eq("Television Studio"))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves new contact into the array of contacts") do
      test_contact = Contact.new({:first_name => "Betty",:last_name => "Boop", :job_title => "actress", :company => "Television Studio"})
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe('.clear') do
    it("empties the array of contacts") do
      test_contact = Contact.new({:first_name => "Betty",:last_name => "Boop", :job_title => "actress", :company => "Television Studio"})
      test_contact.save()
      expect(Contact.clear()).to(eq([]))
    end
  end

  describe('#id') do
    it("returns the id of the contact") do
      test_contact = Contact.new({:first_name => "Betty",:last_name => "Boop", :job_title => "actress", :company => "Television Studio"})
      test_contact.save()
      expect(test_contact.id()).to(eq(1))
    end
  end

  describe('.find') do
    it("finds a contact by its id") do
      test_contact = Contact.new({:first_name => "Betty",:last_name => "Boop", :job_title => "actress", :company => "Television Studio"})
      test_contact.save()
      test_contact2 = Contact.new({:first_name => "Luigi",:last_name => "Bro", :job_title => "plumber", :company => "Super Mario Bros."})
      test_contact2.save()
      expect(Contact.find(test_contact.id())).to(eq(test_contact))
    end
  end

  describe('#emails') do
    it("initially returns an empty array of emails for the contact") do
      test_contact = Contact.new({:first_name => "Betty",:last_name => "Boop", :job_title => "actress", :company => "Television Studio"})
      expect(test_contact.emails()).to(eq([]))
    end
  end

  describe('#phone') do
    it("initially returns an empty array of phone for the contact") do
      test_contact = Contact.new({:first_name => "Betty",:last_name => "Boop", :job_title => "actress", :company => "Television Studio"})
      expect(test_contact.phone()).to(eq([]))
    end
  end

  describe('#mail') do
    it("initially returns an empty array of mail for the contact") do
      test_contact = Contact.new({:first_name => "Betty",:last_name => "Boop", :job_title => "actress", :company => "Television Studio"})
      expect(test_contact.mail()).to(eq([]))
    end
  end

  describe("#add_email") do
    it("adds an email address to the contact") do
      test_contact = Contact.new({:first_name => "Betty",:last_name => "Boop", :job_title => "actress", :company => "Television Studio"})
      test_email = Email.new({:address =>"jessicabanana@gmail.com",:type =>"Home"})
      test_contact.add_email(test_email)
      expect(test_contact.emails()).to(eq([test_email]))
    end
  end

  describe("#add_phone") do
    it("adds an email address to the contact") do
      test_contact = Contact.new({:first_name => "Betty",:last_name => "Boop", :job_title => "actress", :company => "Television Studio"})
      test_phone = Phone_number.new({:area_code => "(503)", :number => "555-5452",:type => "Work"})
      test_contact.add_phone(test_phone)
      expect(test_contact.phone()).to(eq([test_phone]))
    end
  end

  describe("#add_mail") do
    it("adds a mailing address to the contact") do
      test_contact = Contact.new({:first_name => "Betty",:last_name => "Boop", :job_title => "actress", :company => "Television Studio"})
      test_mail = Mail_address.new({:street_address => "123 Test St.", :city => "Portland", :state => "OR", :zip => "97204", :type => "Work"})
      test_contact.add_mail(test_mail)
      expect(test_contact.mail()).to(eq([test_mail]))
    end
  end
end
