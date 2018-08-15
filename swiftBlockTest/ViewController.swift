//
//  ViewController.swift
//  swiftBlockTest
//
//  Created by user on 2018/8/15.
//  Copyright © 2018年 liwuyang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.testBlock { (str) in
            print(str)
        }
        
        
    }
    //链接:https://www.jianshu.com/p/6a8066218539
    /***************** 基本概念
     
     1,类型: (形参列表)->(返回值)
     
     2,值:
         {(形参列表)->返回值 in
            //执行代码
         }
     3,如果闭包没有返回值,in和in之前的代码可以省略
     
     */
    
    func testBlock(complete: ((String)->())) {
        complete("testBlock")
    }
    
    //尾随闭包
    func testTrailBlock() {
        
    }
    
    /*************** 循环引用
     
     1,检测是否循环引用的方式可以实现对象的deinit析构函数，看是否执行，如果执行则无循环引用
     */
    @IBAction func clickTestRecycle(_ sender: Any) {
        testRecycle()
    }
    func testRecycle() {
        let vc = RecycleViewController()
        vc.callBack = {(str) in
            print(str)
        }
        self.present(vc, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

