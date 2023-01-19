//
//  main.swift
//  BaekJoon#1920
//
//  Created by 김병엽 on 2023/01/19.
//

import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int(String($0))! }
arr.sort()

let m = Int(readLine()!)!
var arr2 = readLine()!.split(separator: " ").map { Int(String($0))! }

var result = [Int]()

for i in 0..<arr2.count  {
    result.append(binarySearch(arr, arr2[i]))
}

for i in 0..<result.count {
    print(result[i])
}

func binarySearch(_ arr: [Int], _ target: Int) -> Int {

    if target < arr[0] { return 0 }
    else if target > arr[arr.count - 1] { return 0 }

    var str = 0
    var end = arr.count - 1

    while (str <= end) {
        let mid = (str + end) / 2
        
        if arr[mid] == target { return 1 }
        else if arr[mid] < target {
            str = mid + 1
        }
        else {
            end = mid - 1
        }
    }
    return 0
}

