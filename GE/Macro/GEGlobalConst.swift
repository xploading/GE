//
//  GlobalConst.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/22.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import Foundation
import UIKit

let BaiscURL = URL(string: "")


let GWidth  = UIScreen.main.bounds.width
let GHeight = UIScreen.main.bounds.height


//图片闭包
var GImageBlock : ((UIImage)->Void) = { image in
    print("GImageBlock执行错误,未找到可执行的block方法")
}
//model闭包
var GModelBlock : ((GEModel)->Void) = { model in
    print("GModelBlock执行错误,未找到可执行的block方法")
}


//MARK:Frame相关



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







