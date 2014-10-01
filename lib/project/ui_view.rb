# https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UIView_class/index.html

class UIView
  def initialize(options = {})
    if options[:frame]
      initWithFrame options[:frame]
    else
      init
    end
  end
end