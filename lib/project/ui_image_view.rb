# https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UIImageView_Class/index.html

class UIImageView
  def initialize(options = {})
    if options[:image] && options[:highlightedImage]
      initWithImage(options[:image], highlightedImage: options[:highlightedImage])
    elsif options[:image]
      initWithImage(options[:image])
    else
      init
    end
  end
end