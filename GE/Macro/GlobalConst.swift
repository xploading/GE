//
//  GlobalConst.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/22.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import Foundation
import UIKit



let GWidth  = UIScreen.main.bounds.width
let GHeight = UIScreen.main.bounds.height

//图片闭包
var GImageBlock : ((UIImage)->Void)?
//model闭包
var GModelBlock : ((GEModel)->Void)?




/**适应屏幕宽度*/
func zzFit(w:CGFloat)->CGFloat
{
    return w*GWidth/414
}
/**适应屏幕高度*/
func zzFit(h:CGFloat)->CGFloat
{
    return h*GHeight/736
}







