# https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UIFont_Class/index.html

class UIFont
  def self.new(options = {})
    name = options[:name]
    size = options[:size]
    self.fontWithName(name, size: size)
  end
end