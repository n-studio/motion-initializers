# These subclasses allows me to quickly see what is not correctly deallocated when a UIViewController is dismissed.

class ZombieView < UIView
  def dealloc
    NSLog "ZombieView was deallocated"
  end
end

class ZombieLabel < UILabel
  def dealloc
    NSLog "ZombieLabel was deallocated"
  end
end

class ZombieButton < UIButton
  def dealloc
    NSLog "ZombieButton was deallocated"
  end
end