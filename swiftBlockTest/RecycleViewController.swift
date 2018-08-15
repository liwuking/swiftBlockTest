//
//  RecycleViewController.swift
//  swiftBlockTest
//
//  Created by user on 2018/8/15.
//  Copyright © 2018年 liwuyang. All rights reserved.
//

import UIKit

class RecycleViewController: UIViewController {

    var callBack:((String)->())?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let backBtn = UIButton(type: .custom)
        backBtn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        backBtn.setTitle("返回", for: .normal)
        backBtn.setTitleColor(UIColor.blue, for: .normal)
        backBtn.addTarget(self, action: #selector(clickBackBtn), for: .touchUpInside)
        self.view.addSubview(backBtn)
        
        self.testBlock { (str) in
            
        }
    }
    
    func testBlock(complete: @escaping ((String)->())) {
        
        self.callBack = complete
        complete("testBlock")
    }

    @objc func clickBackBtn() {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
//        self.callBack?("callBack")
    }
    deinit {
        print("deinit RecycleViewController")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
