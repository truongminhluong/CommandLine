//
//  main.swift
//  Baitap4
//
//  Created by Trương Minh Lượng Jr on 08/10/2023.
//

import Foundation

func findFirstOddAndLastEvenPosition(_ numbers: [Int]) -> (Int?, Int?) {
    var firstOddPosition: Int? = nil
    var lastEvenPosition: Int? = nil
    
    for (index, number) in numbers.enumerated() {
        if number % 2 == 1 && firstOddPosition == nil {
            firstOddPosition = index
        }
        
        if number % 2 == 0 {
            lastEvenPosition = index
        }
    }
    
    return (firstOddPosition, lastEvenPosition)
}

let numbers = [2, 4, 6, 1, 8, 10, 3]
let positions = findFirstOddAndLastEvenPosition(numbers)

if let firstOddPosition = positions.0 {
    print("Vị trí đầu tiên của số lẻ: \(firstOddPosition)")
} else {
    print("Không có số lẻ trong mảng.")
}

if let lastEvenPosition = positions.1 {
    print("Vị trí cuối cùng của số chẵn: \(lastEvenPosition)")
} else {
    print("Không có số chẵn trong mảng.")
}


print("ancncnc")

