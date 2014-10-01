# https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UIButton_class/index.html

class UIButton
  UIButtonTypeEnum = {
    custom: UIButtonTypeCustom,
    system: UIButtonTypeSystem,
    detail_disclosure: UIButtonTypeDetailDisclosure,
    info_light: UIButtonTypeInfoLight,
    info_dark: UIButtonTypeInfoDark,
    contact_add: UIButtonTypeContactAdd
  }

  def self.new(options = {})
    if options[:type]
      self.buttonWithType(UIButtonTypeEnum[options[:type]])
    else
      self.alloc.init
    end
  end

  def setTitle!(title, forState: state)
    setTitle(title, forState: UIControl::UIControlStateEnum[state])
  end
  alias_method :'set_title:state:', :'setTitle!:forState:'
  
  def title(options)
    titleForState(UIControl::UIControlStateEnum[options[:state]])
  end
  
  def setTitleColor!(color, forState: state)
    setTitleColor(color, forState: UIControl::UIControlStateEnum[state])
  end
  alias_method :'set_title_color:state:', :'setTitleColor!:forState:'
  
  def titleColor(options)
    titleColorForState(UIControl::UIControlStateEnum[options[:state]])
  end
end