class StartController < UIViewController
  def loadView
    self.view = UIScrollView.new
  end
  
  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor
    
    self.title = "Start"
    
    button = UIButton.new(type: :custom)
    button.frame = CGRect.new([0, view.frame.maxY], [300, 100])
    button.set_title("go to Showcase Controller", state: :normal)
    button.set_title_color(UIColor.redColor, state: :normal)
    self.view.addSubview button
    
    button.add_target(self, action: 'goToShowcase:', events: :touch_up_inside)
  end
  
  def goToShowcase(sender)
    self.navigationController.pushViewController(ShowcaseController.new, animated: true)
  end
end