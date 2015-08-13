class Phone_number
  attr_reader(:area_code,:number,:type)
  @@phone_numbers = []

  define_method(:initialize) do |attributes|
    @area_code = attributes.fetch(:area_code)
    @number = attributes.fetch(:number)
    @type = attributes.fetch(:type)
  end

  define_singleton_method(:all) do
    @@phone_numbers
  end

  define_method(:save) do
    @@phone_numbers.push(self)
  end

end
