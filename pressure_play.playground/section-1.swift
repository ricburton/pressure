// Playground - noun: a place where people can play

import UIKit

func touchesMoved(touches: NSSet!, withEvent event: UIEvent!) {
    var touch : UITouch = touches.anyObject() as UITouch
    var lower = touch.majorRadius - touch.majorRadiusTolerance
    var upper = touch.majorRadius + touch.majorRadiusTolerance
    var average = (lower + upper) / 2.0
    println("touch was between \(lower)pt and \(upper)pt in size (avg \(average)")
}







CGSize(width: CGFloat(3),height: CGFloat(5))

