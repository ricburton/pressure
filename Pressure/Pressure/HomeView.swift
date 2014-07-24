//
//  HomeView.swift
//  Pressure
//
//  Created by Richard Burton on 24/07/2014.
//  Copyright (c) 2014 BurtonDuke. All rights reserved.
//

import UIKit

class HomeView: UIView {
    @IBOutlet var underPressureAlbumImageView: UIImageView
    @IBOutlet var touchBeginMajorRadiusLabel: UILabel
    @IBOutlet var touchMovedMajorRadiusLabel: UILabel
    
    var firstTouch:NSNumber
    
    
    init(coder aDecoder: NSCoder!)
    {
        self.firstTouch = 0
        super.init(coder: aDecoder)
    }
    
//    init(frame: CGRect) {
//        super.init(frame: frame)
//        // Initialization code
//    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!){
        var touch : UITouch = touches.anyObject() as UITouch
        var lower = touch.majorRadius - touch.majorRadiusTolerance
        var upper = touch.majorRadius + touch.majorRadiusTolerance
        var average = (lower + upper) / 2.0
        println("touch began:\(touch.majorRadius)")
        
        self.touchBeginMajorRadiusLabel.text = String(touch.majorRadius)
        self.firstTouch = touch.majorRadius
    }
    
    override func touchesMoved(touches: NSSet!, withEvent event: UIEvent!) {
        var touch : UITouch = touches.anyObject() as UITouch
        var touchRadius = touch.majorRadius
        println("touch moved: \(touchRadius)")
        
        self.touchMovedMajorRadiusLabel.text = String(touchRadius)
        
        var height = self.underPressureAlbumImageView.intrinsicContentSize().height
        var width = self.underPressureAlbumImageView.intrinsicContentSize().width
        
        var difference = CGFloat(self.firstTouch) / CGFloat(touchRadius)
        var size = CGSize(width: width * difference, height: height * difference)
        self.underPressureAlbumImageView.sizeThatFits(size)
//        self.underPressureAlbumImageView.intrinsicContentSize().height = CGFloat(height) * CGFloat(difference)
//        self.underPressureAlbumImageView.intrinsicContentSize().width = CGFloat(Double(width) * difference)
        
    }

}
