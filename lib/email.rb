class Email
  attr_reader(:address, :type)
  @@emails = []

  define_method(:initialize) do |attributes|
    @address = attributes.fetch(:address)
    @type = attributes.fetch(:type)
    @id = @@emails.length().+(1)
  end

  define_singleton_method(:all) do
    @@emails
  end

  define_method(:save) do
    @@emails.push(self)
  end

  define_singleton_method(:clear)do
    @@emails = []
  end

  define_method(:id) do
    @id
  end
end
