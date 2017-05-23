//
//  GEViewController.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/23.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import UIKit

class GEViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//MARK:弹框
    /// revoc为nil时不显示取消按钮,handle为nil时,alert只消失不执行任何操作
    func zzShowAlertController(_ content:String,revoc:String?,_ handler:((UIAlertAction)->Void)?){
        let alert = UIAlertController(title: content, message: nil, preferredStyle: .alert)
        let executeAction = UIAlertAction(title: "确定", style: .default, handler: handler)
        if revoc != nil
        {
            let cancelAction = UIAlertAction(title: revoc, style: .cancel, handler: nil)
            alert.addAction(cancelAction)
        }
        alert.addAction(executeAction)
        self.present(alert, animated: true, completion: nil)
    }
}
