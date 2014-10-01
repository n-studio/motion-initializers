class ShowcaseController < UIViewController
  def loadView
    self.view = UIScrollView.new
  end
  
  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor
    
    self.title = "Showcase"
    
    # init view with frame
    view = ZombieView.new(frame: [[0, 0], [100, 100]])
    view.backgroundColor = UIColor.redColor
    self.view.addSubview view
    
    # init font with name and size
    label = ZombieLabel.new(frame: [[0, 0], [100, 100]])
    label.text = "Hallo"
    label.font = UIFont.new(name: "HelveticaNeue-Light", size: 25.0)
    self.view.addSubview label
    
    # init button with type
    @button = ZombieButton.new(type: :custom)
    @button.frame = CGRect.new([0, view.frame.maxY], [200, 100])
    @button.setTitle!("switch color", forState: :normal)
    @button.setTitleColor!(UIColor.redColor, forState: :normal)
    @button.addTarget!(self, action: 'switchColor:', forControlEvents: :touch_up_inside)
    self.view.addSubview @button
  end
  
  def viewDidAppear(animated)
    super
    @view = ZombieView.new(frame: [[0, 230], [50, 50]])
    self.view.addSubview @view
    
    # test exception
    @nil_variable = nil
    @nil_variable._!{size}
  rescue OptionalChainingError => e
    NSLog "Fatal error: " + e.message
  end
  
  def viewWillDisappear(animated)
    super
  end
  
  def switchColor(sender)
    # use methods chain
    if @switch
      @view._?('setBackgroundColor:', nil)
      NSLog "CGColor: #{@view._?('backgroundColor')._?('CGColor')}"
    else
      @view._?{setBackgroundColor(UIColor.blueColor)}
      NSLog "CGColor: #{@view._? { backgroundColor }._? {|v| v.CGColor}}"
    end
    @switch = !@switch
  end
end