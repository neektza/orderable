module Orderable

  def before(what, method_name = nil, &block)
    execute(method_name || block)
    what
  end

  def after(what, method_name = nil, &block)
    do_stuff.call
    execute(method_name || block)
  end

  def execute(whatever)
    if methods.include? whatever
      method(whatever).call
    elsif whatever.is_a? Proc
      whatever.call
    else
      fail "not executable"
    end
  end

end
