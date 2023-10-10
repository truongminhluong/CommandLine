//
//  main.swift
//  Baitap5
//
//  Created by Trương Minh Lượng Jr on 10/10/2023.
//

import Foundation

struct SinhVien {
    var ten: String
    var maSinhVien: String
    var diemToan: Double
    var diemLy: Double
    var diemHoa: Double
    
    var diemTrungBinh: Double {
        return (diemToan + diemLy + diemHoa) / 3.0
    }
}

var danhSachSinhVien: [SinhVien] = []

func themMoiSinhVien(ten: String, maSinhVien: String, diemToan: Double, diemLy: Double, diemHoa: Double) {
    let sinhViemMoi = SinhVien(ten: ten, maSinhVien: maSinhVien, diemToan: diemToan, diemLy: diemLy, diemHoa: diemHoa)
    danhSachSinhVien.append(sinhViemMoi)
}

func capNhatDiemSinhVien(maSinhVien: String, diemToan: Double, diemLy: Double, diemHoa: Double) {
    for var sinhVien in danhSachSinhVien {
        if sinhVien.maSinhVien == maSinhVien {
            sinhVien.diemToan = diemToan
            sinhVien.diemLy = diemLy
            sinhVien.diemHoa = diemHoa
            return
        }
    }
    print("Không tim thấy mã sinh viên \(maSinhVien)")
}

func hienThiDanhSachSV() {
    let danhSachSapXep = danhSachSinhVien.sorted { $0.diemTrungBinh > $1.diemTrungBinh }
    for sinhVien in danhSachSapXep {
        print("Tên: \(sinhVien.ten), Mã SV: \(sinhVien.maSinhVien), Điểm Toán: \(sinhVien.diemToan), Điểm Lý: \(sinhVien.diemLy), Điểm Hoá: \(sinhVien.diemHoa), Điểm Trung Bình: \(sinhVien.diemTrungBinh)")
    }
}

themMoiSinhVien(ten: "Luong", maSinhVien: "CP01", diemToan: 8.0, diemLy: 7.0, diemHoa: 9.0)
themMoiSinhVien(ten: "Phuong", maSinhVien: "CP02", diemToan: 8.0, diemLy: 6.0, diemHoa: 7.0)
themMoiSinhVien(ten: "Bin", maSinhVien: "CP03", diemToan: 6.0, diemLy: 7.0, diemHoa: 5.0)

print("Danh sách sinh viên theo thứ tự điểm trung bình giảm dần:")
print("--------------------------------------------------------")
hienThiDanhSachSV()

capNhatDiemSinhVien(maSinhVien: "CP03", diemToan: 5.0, diemLy: 5.0, diemHoa: 5.0)

print("Danh sách sinh viên sau khi cập nhât:")
print("--------------------------------------------------------")
hienThiDanhSachSV()




