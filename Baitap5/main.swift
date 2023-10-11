//
//  main.swift
//  Baitap5
//
//  Created by Trương Minh Lượng Jr on 10/10/2023.
//

import Foundation

struct SinhVien {
    var ten, maSinhVien: String
    var diemToan: Double
    var diemLy: Double
    var diemHoa: Double
    /*
    init(ten: String, maSinhVien: String, diemToan: Double, diemLy: Double, diemHoa: Double) {
        self.ten = ten
        self.maSinhVien = maSinhVien
        self.diemToan = diemToan
        self.diemLy = diemLy
        self.diemHoa = diemHoa
    }
    init(){
        (ten, maSinhVien) = ("" , "")
        (diemToan, diemLy, diemHoa) = (0, 0, 0)
    }
     */
    var diemTrungBinh: Double {
        return (diemToan + diemLy + diemHoa) / 3.0
    }
}

var danhSachSinhVien: [SinhVien] = []

func themMoiSinhVien(ten: String, maSinhVien: String, diemToan: Double, diemLy: Double, diemHoa: Double) {
    let sinhViemMoi = SinhVien(ten: ten, maSinhVien: maSinhVien, diemToan: diemToan, diemLy: diemLy, diemHoa: diemHoa)
    danhSachSinhVien.append(sinhViemMoi)
}

func getIndexByCode(code: String) -> Int{
    for (index, sv) in danhSachSinhVien.enumerated() {
        if code == sv.maSinhVien {
            return index
        }
    }
    return -1
}


func capNhatDiemSinhVien(maSinhVien: String, diemToan: Double, diemLy: Double, diemHoa: Double) {
   let index = getIndexByCode(code: maSinhVien)
    if index == -1 {
        print("Not found student")
        return
    }
    var sv = danhSachSinhVien[index]
    sv.diemLy = diemLy
    sv.diemHoa = diemHoa
    sv.diemToan = diemToan
    danhSachSinhVien[index] = sv
    print("Update student success")
    
}

func hienThiDanhSachSV() {
    let danhSachSapXep = danhSachSinhVien.sorted { $0.diemTrungBinh > $1.diemTrungBinh }
    print("Danh sách sinh viên theo thứ tự điểm trung bình giảm dần:")
    for sinhVien in danhSachSapXep {
        print("Tên: \(sinhVien.ten), Mã SV: \(sinhVien.maSinhVien), Điểm Toán: \(sinhVien.diemToan), Điểm Lý: \(sinhVien.diemLy), Điểm Hoá: \(sinhVien.diemHoa), Điểm Trung Bình: \(sinhVien.diemTrungBinh)")
    }
    print("-------------------------------------")
}

themMoiSinhVien(ten: "Luong", maSinhVien: "CP01", diemToan: 8.0, diemLy: 7.0, diemHoa: 9.0)
themMoiSinhVien(ten: "Phuong", maSinhVien: "CP02", diemToan: 8.0, diemLy: 6.0, diemHoa: 7.0)
themMoiSinhVien(ten: "Bin", maSinhVien: "CP03", diemToan: 6.0, diemLy: 7.0, diemHoa: 5.0)
themMoiSinhVien(ten: "Nhim", maSinhVien: "CP04", diemToan: 2.0, diemLy: 3.0, diemHoa: 4.0)


hienThiDanhSachSV()

capNhatDiemSinhVien(maSinhVien: "CP01", diemToan: 5.0, diemLy: 5.0, diemHoa: 5.0)

hienThiDanhSachSV()

//class Product {
//    var ten: String
//    var maSP: String
//    var giaBan: Double
//    var soLuongTrongKho: Int
//    
//    init(ten: String, maSP: String, giaBan: Double, soLuongTrongKho: Int) {
//        self.ten = ten
//        self.maSP = maSP
//        self.giaBan = giaBan
//        self.soLuongTrongKho = soLuongTrongKho
//    }
//}
//
//var danhSachSP: [Product] = []
//
//func themSP(ten: String, maSP: String, giaBan: Double, soLuongTrongKho: Int) {
//    let sanPhamMoi = Product(ten: ten, maSP: maSP, giaBan: giaBan, soLuongTrongKho: soLuongTrongKho)
//    danhSachSP.append(sanPhamMoi)
//}
//
//func capNhatSP(maSP: String, giaBan: Double, soLuongTrongKho: Int) {
//    for sanPham in danhSachSP {
//        if sanPham.maSP == maSP {
//            sanPham.giaBan = giaBan
//            sanPham.soLuongTrongKho = soLuongTrongKho
//            return
//        }
//    }
//    print("Không tìm thấy sản phẩm có mã: \(maSP)")
//}
//
//func hienThiSP() {
//    print("Danh sách sản phẩm:")
//    for sanPham in danhSachSP {
//        print("Tên: \(sanPham.ten), Mã Sản Phẩm: \(sanPham.maSP), Giá bán: \(sanPham.giaBan), Số lượng trong kho: \(sanPham.soLuongTrongKho)")
//    }
//}
//
//func timKiemTheoTen(tenSp: String) {
//    let ketQuaTimKiem = danhSachSP.filter { $0.ten.contains(tenSp) }
//    
//    if ketQuaTimKiem.isEmpty {
//        print("Không tìm thấy tên sản phẩm")
//    }else {
//        print("Kết quả tìm kiếm có tên: \(tenSp)")
//        for sanPham in ketQuaTimKiem {
//            print("Tên: \(sanPham.ten), Mã Sản Phẩm: \(sanPham.maSP), Giá bán: \(sanPham.giaBan), Số lượng trong kho: \(sanPham.soLuongTrongKho)")
//        }
//    }
//}
//
//themSP(ten: "Sản phẩm A", maSP: "SP01", giaBan: 50.0, soLuongTrongKho: 50)
//themSP(ten: "Sản phẩm B", maSP: "SP01", giaBan: 50.0, soLuongTrongKho: 50)
//themSP(ten: "Sản phẩm C", maSP: "SP01", giaBan: 50.0, soLuongTrongKho: 50)
//
//hienThiSP()
//
//capNhatSP(maSP: "SP01", giaBan: 100.0, soLuongTrongKho: 100)
//
//hienThiSP()
//
//timKiemTheoTen(tenSp: "Sản phẩm A")

