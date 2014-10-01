# Inspired by http://blog.thoughtfolder.com/2008-03-16-navigating-nil-method-chaining-in-ruby.html
# https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/OptionalChaining.html

class OptionalChainingError < StandardError
  def message
    "Unexpectedly found nil while unwrapping an Optional value"
  end
end

class NSObject
  def _?(method = nil, *args, &block)
    if block_given? && block.arity == 1
      yield(self)
    elsif block_given?
      instance_eval(&block)
    elsif method
      __send__(method, *args)
    else
      self
    end
  end
  alias_method :_!, :_?
end

class NilClass
  def _?(method = nil, *args, &block)
    nil
  end
  
  def _!(method = nil, *args, &block)
    raise OptionalChainingError
  end
end