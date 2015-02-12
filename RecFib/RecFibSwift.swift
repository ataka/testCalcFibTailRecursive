//
//  RecFibSwift.swift
//  RecFib
//
//  Created by 安宅 正之 on 2015/02/13.
//  Copyright (c) 2015年 MasayukiAtaka. All rights reserved.
//

//import Cocoa
import UIKit

class RecFibSwift: NSObject {
    func fib(n: Int) -> Int {
        if (n < 3) {
            return 1
        } else {
            return fib(n-1) + fib(n-2)
        }
    }
    
    func fibTail(n: Int) -> Int {
        return fibInner(n, a:1, b:0);
    }
    func fibInner (m: Int, a: Int, b: Int) -> Int {
        if (m == 0) {
            return b
        } else {
            return fibInner(m-1, a:a+b, b:a)
        }
    }
}
