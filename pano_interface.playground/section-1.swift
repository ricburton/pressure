import UIKit

let iPhone5ScreenWidth:CGFloat = 640
let iPhone5ScreenHeight:CGFloat = 1136

let canvas = UIView(frame:CGRectMake(0, 0, iPhone5ScreenWidth, iPhone5ScreenHeight))

canvas.backgroundColor = UIColor.grayColor()

let titleWidth:CGFloat = 100
let titleHeight:CGFloat = 50

let title = UILabel(frame: CGRectMake((iPhone5ScreenWidth/2) - (titleWidth/2), 100, titleWidth, titleHeight))

//canvas.

//CGRectMa
title.text = "Pano"
title.textColor = UIColor.blackColor()
title.textAlignment = NSTextAlignment.Center

canvas.addSubview(title)


//[UIColor, colorWithRed:0.255 green:0.192 blue:0.192 alpha:1]

//How to set UIColor?

var panoHolderWidth = iPhone5ScreenWidth - 2
var panoHolderHeight:CGFloat = 135


//How to createa an image holder?
//How to add images to playground?

let panoHolder = UILabel(frame: CGRectMake(iPhone5ScreenWidth/2 - panoHolderWidth/2, 300, panoHolderWidth, panoHolderHeight))

panoHolder.backgroundColor = UIColor.whiteColor()
panoHolder.layer.shadowColor = CGColorCreateGenericRGB(0, 0, 0, 1)
panoHolder.layer.shadowOpacity = 10
panoHolder.layer.shadowRadius = 10

let panoHolder2 = UILabel(frame: CGRectMake(iPhone5ScreenWidth/2 - panoHolderWidth/2, 300 + (panoHolderHeight * 1) + (1*2), panoHolderWidth, panoHolderHeight))

panoHolder2.backgroundColor = UIColor.whiteColor()
panoHolder2.layer.shadowColor = CGColorCreateGenericRGB(0, 0, 0, 1)
panoHolder2.layer.shadowOpacity = 10
panoHolder2.layer.shadowRadius = 10

let panoHolder3 = UILabel(frame: CGRectMake(iPhone5ScreenWidth/2 - panoHolderWidth/2, 300 + (panoHolderHeight * 2) + (2*2), panoHolderWidth, panoHolderHeight))

//panoHolder2.x? how to get hold of the coordinates?
panoHolder3.backgroundColor = UIColor.whiteColor()
panoHolder3.layer.shadowColor = CGColorCreateGenericRGB(0, 0, 0, 1)
panoHolder3.layer.shadowOpacity = 10
panoHolder3.layer.shadowRadius = 10

let panoHolder4 = UILabel(frame: CGRectMake(iPhone5ScreenWidth/2 - panoHolderWidth/2, 300 + (panoHolderHeight * 3) + (3*2), panoHolderWidth, panoHolderHeight))


panoHolder4.backgroundColor = UIColor.whiteColor()
panoHolder4.layer.shadowColor = CGColorCreateGenericRGB(0, 0, 0, 1)
panoHolder4.layer.shadowOpacity = 10
panoHolder4.layer.shadowRadius = 10

canvas.addSubview(panoHolder4)
canvas.addSubview(panoHolder3)
canvas.addSubview(panoHolder2)
canvas.addSubview(panoHolder)
//let panoHolder2 = panoHolder

//panoHolder2. 

//How to change coordinates of rect? Duplicate easily?


let shareButtonWidth:CGFloat = 300
let shareButtonHeight:CGFloat = 100

let shareButton = UIButton(frame:CGRectMake(iPhone5ScreenWidth/2 - shareButtonWidth/2, 1000, shareButtonWidth, shareButtonHeight))

shareButton.backgroundColor = UIColor.blackColor()
shareButton.layer.cornerRadius = 5
shareButton.setTitle("Post on Instagram", forState: UIControlState.Normal)
shareButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
shareButton.layer.shadowColor = CGColorCreateGenericRGB(0, 0, 0, 1)
shareButton.layer.shadowOpacity = 10

//shareButton.layer.offSet = 10
shareButton.layer.shadowRadius = 10

//shareButton.setBackgroundCol

//How to set background color?
shareButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)

canvas.addSubview(shareButton)

canvas
