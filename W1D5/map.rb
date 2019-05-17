# Map class can be implemented using a 2D array
# Keys should always be unique 
#
class Map
  def initialize
   @my_map = []
  end

  def set(key, value)
    if @my_map.map{|x| x[0]}.include?(key)
      @my_map.delete_if{|k, v| k == key}
      @my_map.push([key, value])
    else
      @my_map.push([key, value])
    end 
  end

  def get(key)
    @my_map.select{|x| x[0] == key}
  end

  def delete(key)
    @my_map.delete_if{|k, v| k == key}
  end

  def show
    @my_map
  end
end
