//
//  main.swift
//  Baitap4
//
//  Created by Trương Minh Lượng Jr on 08/10/2023.
//

import Foundation

//func timViTri(_ numbers: [Int]) -> (Int?, Int?) {
//    var soLeDau: Int? = nil
//    var soChanCuoi: Int? = nil
//    
//    for (index, number) in numbers.enumerated() {
//        if number % 2 == 1 && soLeDau == nil {
//            soLeDau = index
//        }
//        
//        if number % 2 == 0 {
//            soChanCuoi = index
//        }
//    }
//    
//    return (soLeDau, soChanCuoi)
//
//}
//
//let numbers = [2, 4, 6, 1, 8, 10, 3]
//
//if let soLeDau = timViTri(numbers).0 {
//    print("Vị trí đầu tiên của số lẻ: \(soLeDau)")
//}else {
//    print("Không có số lẻ trong mảng")
//}
//
//if let soChanCuoi = timViTri(numbers).1 {
//    print("Vị trí đầu tiên của số lẻ: \(soChanCuoi)")
//}else {
//    print("Không có số lẻ trong mảng")
//}

//func timMinMax(_ numbers: [Int]) -> (min: Int?, max: Int?) {
//    if numbers.isEmpty {
//        return (nil, nil)
//    }
//    
//    var min = numbers[0]
//    var max = numbers[0]
//    
//    for number in numbers {
//        if number < min {
//            min = number
//        }
//        
//        if number > max {
//            max = number
//        }
//    }
//    
//    return (min, max)
//}
//
//let numbers = [5, 2, 9, 1, 8, 3, 7]
//
//if let min = timMinMax(numbers).min {
//    print("Số nhỏ nhất là:\(min)")
//}else {
//    print("Mảng rỗng")
//}
//
//
//if let max = timMinMax(numbers).max {
//    print("Số lớn nhất là:\(max)")
//}else {
//    print("Mảng rỗng")
//}

func miniGame() {
    let randomNumber = Int.random(in: 1...100)
    var soLanDaChon = 0
    print("Chào mừng bạn đến với trò chơi doán số!")
    
    while true {
        print("Nhập số bạn chọn:")
        if let input = readLine(), let soDaChon = Int(input) {
            if soDaChon == randomNumber {
                print("Chúc mừng bạn đã đoán đúng \(soDaChon) sau \(soLanDaChon) lần!!")
                break
            }else if soDaChon < randomNumber {
                print("Số bạn chọn quá bé. Hãy thử lại!!")
            }else if soDaChon > randomNumber {
                print("Số bạn chọn quá lớn. Hãy chọn lại!!")
            }
        }else {
            print("Số bạn nhập không hợp lệ. Hãy nhập một số từ 1 đến 100")
        }
    }
}
miniGame()




