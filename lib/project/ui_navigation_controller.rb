
# init(rootViewController:)
# init(navigationBarClass:toolbarClass:)

class UINavigationController
  def initialize(options = {})
    if options[:rootViewController]
      initWithRootViewController options[:rootViewController]
    elsif options[:navigationBarClass] && options[:toolbarClass]
      initWithNavigationBarClass(options[:navigationBarClass], toolbarClass: options[:toolbarClass])
    else
      init
    end
  end
end