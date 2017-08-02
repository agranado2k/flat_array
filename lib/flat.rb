class Array
  def intercon_flat(flat_array=[])
    self.each do |elem|
      if elem.is_a?(Array)
        flat_array = elem.intercon_flat(flat_array)
      else
        flat_array.push(elem)
      end
    end
    flat_array
  end
end
