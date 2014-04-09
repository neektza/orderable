require_relative 'orderable'

class Dummy
  include Orderable

  def some_method
    p "before the Object"
  end

  def this_comes_before
    p "Subject comes"
  end
  
end
