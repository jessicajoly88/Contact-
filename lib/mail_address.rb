class Mail_address
  attr_reader(:street_address,:city,:state,:zip,:type)
  @@mail_addresses = []

  define_method(:initialize) do |attributes|
    @street_address = attributes.fetch(:street_address)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
    @type = attributes.fetch(:type)
    @id = @@mail_addresses.length().+(1)
  end

  define_singleton_method(:all) do
    @@mail_addresses
  end

  define_method(:save) do
    @@mail_addresses.push(self)
  end

  define_singleton_method(:clear) do
    @@mail_addresses = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_address = nil
    @@mail_addresses.each() do |address|
      if address.id().eql?(id.to_i())
        found_address = address
      end
    end
    found_address      
  end

end
