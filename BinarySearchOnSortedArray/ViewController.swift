//
//  ViewController.swift
//  BinarySearchOnSortedArray
//
//  Created by MUKUL on 20/01/19.
//  Copyright © 2019 CoderWork. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let elementIndx = self.applyBinarySearchArray(sortdArry: [1,2,3,4,5,6,7,8,9], searchKey: 5)
        print("element Idx is",elementIndx)
    }
    
    
    func applyBinarySearchArray(sortdArry:[Int],searchKey:Int) -> Int{
        let givenArray = sortdArry
        let searchElement = searchKey
        var startPointer = 0
        var endPointer = givenArray.count - 1
        var mid = Int((startPointer +  endPointer) / 2)
        while startPointer <= endPointer {
            if givenArray[mid] == searchElement {
                return mid
            }
                //Element Less than mid
            else if searchElement < givenArray[mid] {
                endPointer = mid - 1
                mid = Int((startPointer + endPointer) / 2)
                print("mid is",mid)
            }
                //Element Greater than mid
            else {
                startPointer = mid + 1
                mid = Int((startPointer + endPointer) / 2)
            }
        }
        return -1
    }
}

