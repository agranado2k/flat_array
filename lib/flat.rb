class Flat
  def execute(array, flat_array=[])
    array.each do |elem|
      if elem.is_a?(Array)
        flat_array = execute(elem,flat_array)
      else
        flat_array.push(elem)
      end
    end
    flat_array
  end
end
