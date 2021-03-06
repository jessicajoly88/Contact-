class Phone_number
  attr_reader(:area_code,:number,:type)
  @@phone_numbers = []

  define_method(:initialize) do |attributes|
    @area_code = attributes.fetch(:area_code)
    @number = attributes.fetch(:number)
    @type = attributes.fetch(:type)
    @id = @@phone_numbers.length().+(1)
  end

  define_singleton_method(:all) do
    @@phone_numbers
  end

  define_method(:save) do
    @@phone_numbers.push(self)
  end

  define_singleton_method(:clear) do
    @@phone_numbers = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_number = nil
    @@phone_numbers.each() do |number|
      if number.id().eql?(id.to_i())
        found_number = number
      end
    end
    found_number      
  end

end
