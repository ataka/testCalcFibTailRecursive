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
    var swiftRec: RecFibSwift!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.objcRec = RecFibObjc()
        self.swiftRec = RecFibSwift()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func SetResult(n: Int) {
        self.result.text = String(format:"Fib(%ld) = %ld", input.text.toInt()!, n)
    }

    @IBAction func objcRecursion(sender: AnyObject) {
        SetResult(self.objcRec.fib(self.input.text.toInt()!))
    }
    @IBAction func objcTailRecursion(sender: AnyObject) {
        SetResult(self.objcRec.fibTail(self.input.text.toInt()!))
    }
    @IBAction func swiftRecursion(sender: AnyObject) {
        SetResult(self.swiftRec.fib(self.input.text.toInt()!))
    } 
    @IBAction func swiftTailRecursion(sender: AnyObject) {
        SetResult(self.swiftRec.fibTail(self.input.text.toInt()!))
    }


}

