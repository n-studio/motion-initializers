class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.new(frame: UIScreen.mainScreen.bounds)
    # The navigation controller is here to easily deallocate the ShowcaseController
    # and check that all subviews are also deallocated.
    navController = UINavigationController.new(rootViewController: StartController.new)
    @window.rootViewController = navController
    @window.makeKeyAndVisible
    true
  end
end
