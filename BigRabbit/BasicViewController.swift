//
//  BasicViewController.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/23.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import UIKit

class BasicViewController: GEViewController {
    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGray
        for i in 0..<4{
        let button = UIButton(frame: CGRect.init(x: CGFloat(i)*60, y: 300, width: 50, height: 50))
            button.setTitle("按钮\(i)", for: .normal)
            button.tag = i
            button.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
            
        self.view.addSubview(button)
        }
        
        // Do any additional setup after loading the view.
 
        
    }
    func clickButton(button:UIButton){
        
        
        
   
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = ViewController1()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
