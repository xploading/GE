//
//  GETools.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/23.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import UIKit

class GETool: NSObject {
//MARK:----------正则表达式判断
    
    /** 验证手机号合法性*/
    static func isMobileNumber(mobile:String)->Bool
    {
        let regex = "^1[3578]\\d{9}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return  predicate.evaluate(with: mobile)
        
    }
    
    /** 验证email合法性*/
    static func isEmailAddress(email:String)->Bool
    {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{1,5}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: email)
    }
    
    /** 验证身份证号合法性*/
    static func isIdentityNumber(number:String)->Bool
    {
        let regex = "^\\d{14}[xX]|\\d{18}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: number)
    }
//MARK:----------用户登录管理
    /**登录状态判断*/
    static func isLogin()->Bool{
        let result = (GEBox.single().infos != nil) ? true : false
        return result
    }
    /**本地保存用户信息*/
    static func zzSaveInfomation(){
        print("储存用户信息")
    }
    static func zzDeleteInfomation(){
        print("删除用户信息")
    }
    
    

    
    

    
}














