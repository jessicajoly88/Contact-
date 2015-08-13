class Email
  attr_reader(:address, :type)
  @@emails = []

  define_method(:initialize) do |attributes|
    @address = attributes.fetch(:address)
    @type = attributes.fetch(:type)
  end

  define_singleton_method(:all) do
    @@emails
  end
end
