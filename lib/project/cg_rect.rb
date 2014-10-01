class CGRect
  def width
    CGRectGetWidth(self)
  end
  
  def height
    CGRectGetHeight(self)
  end
  
  def minX
    CGRectGetMinX(self)
  end
  
  def midX
    CGRectGetMidX(self)
  end
  
  def maxX
    CGRectGetMaxX(self)
  end
  
  def minY
    CGRectGetMinY(self)
  end
  
  def midY
    CGRectGetMidY(self)
  end
  
  def maxY
    CGRectGetMaxY(self)
  end
end