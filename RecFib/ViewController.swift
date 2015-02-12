//
//  ViewController.swift
//  RecFib
//
//  Created by 安宅 正之 on 2015/02/12.
//  Copyright (c) 2015年 MasayukiAtaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var result: UILabel!
    var objcRec: RecFibObjc!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.objcRec = RecFibObjc()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func objcRecursion(sender: AnyObject) {
        self.result.text = String(self.objcRec.fib(self.input.text.toInt()!))
    }
    @IBAction func objcTailRecursion(sender: AnyObject) {
        self.result.text = String(self.objcRec.fibTail(self.input.text.toInt()!))
    }
    @IBAction func swiftRecursion(sender: AnyObject) {
    } 
    @IBAction func swiftTailRecursion(sender: AnyObject) {
    }


}

