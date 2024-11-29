import 'models/CuaHang.dart';
import 'models/DienThoai.dart';
import 'models/HoaDon.dart';

void main(){
  CuaHang cuaHang = CuaHang('Cửa Hàng Điện Thoại DTHANG', 'Số 123, Đường Lê Thị Riêng');
  /*
  1. Tạo và quản lý thông tin điện thoại:  
    o Thêm điện thoại mới 
    o Cập nhật thông tin 
    o Kiểm tra validation
  */
  print('\n\n\n---------------------------------CÂU 1---------------------------------');
  DienThoai dt1 = DienThoai('DT-001', 'iPhone 14', 'Apple', 15000, 20000, 50, true);
  DienThoai dt2 = DienThoai('DT-002', 'Samsung Galaxy S22', 'Samsung', 12000, 16000, 30, true);
  DienThoai dt3 = DienThoai('DT-003', 'Xiaomi Mi 11', 'Xiaomi', 8000, 12000, 70, false);
  DienThoai dt4 = DienThoai('DT-004', 'iPhone 11 Pro', 'Apple', 10000, 15000, 5, true);
  DienThoai dt5 = DienThoai('DT-005', 'Google Pixel 6', 'Google', 11000, 17000, 15, true);
  DienThoai dt6 = DienThoai('DT-006', 'OnePlus 9', 'OnePlus', 9000, 14000, 25, true);

  cuaHang.themDienThoai(dt1);
  cuaHang.themDienThoai(dt2);
  cuaHang.themDienThoai(dt3);
  cuaHang.themDienThoai(dt4);
  cuaHang.themDienThoai(dt5);
  cuaHang.themDienThoai(dt6);

  print('\n\nHiện thị danh sách điện thoại');
  cuaHang.hienThiDanhSachDienThoai();

  DienThoai dtMoi = DienThoai('DT-001', 'iPhone 16 Pro', 'Apple', 17000, 22000, 40, true);
  print('\n\n\n\nCập nhật thông tin điện thoại');
  cuaHang.capNhatThongTinDienThoai(dtMoi);

  print('\n\nTìm kiếm bằng mã điện thoại');
  cuaHang.timKiemDienThoai('DT-001');
  print('\n\nTìm kiếm bằng tên điện thoại');
  cuaHang.timKiemDienThoai('iPhone 16 Pro');
  print('\n\nTìm kiếm bằng hãng sản xuất');
  cuaHang.timKiemDienThoai('Apple');

  /*
  2. Tạo và quản lý hóa đơn:  
    o Tạo hóa đơn hợp lệ 
    o Kiểm tra các ràng buộc (tồn kho, validation) 
    o Tính toán tiền và lợi nhuận 
   */  
  print('\n\n\n---------------------------------CÂU 2---------------------------------'); 
  HoaDon hoaDon1 = HoaDon('HD-001', DateTime(2024, 11, 20), 3, 22000, 'Nguyễn Đức Thắng', '0999888877');
  HoaDon hoaDon2 = HoaDon('HD-002', DateTime(2024, 11, 21), 2, 16000, 'Phan Thiên Hương', '0987654321');
  HoaDon hoaDon3 = HoaDon('HD-003', DateTime(2024, 1, 07), 4, 26000, 'Trần Văn A', '0989898989');
  HoaDon hoaDon4 = HoaDon('HD-004', DateTime(2024, 8, 14), 0, 9000, 'Cụ Lau Công', '0703030303');
  
  cuaHang.themHoaDon(hoaDon1);
  cuaHang.themHoaDon(hoaDon2);
  cuaHang.themHoaDon(hoaDon3);
  cuaHang.themHoaDon(hoaDon4);

  print('\n\nHiện thị danh sách hóa đơn');
  cuaHang.hienThiDanhSachHoaDon();

  //kiểm tra ràng buộc. ở trên điện thoại 4 đã set số lượng tồn kho là 4 và hóa đơn 4 thì set số lượng mua là 7 thì sẽ thông báo
  print('Kiểm tra ràng buộc cho số lượng tồn kho của điện thoại 4 là 5');
  hoaDon4.themDienThoai(dt4);
  print('Trường hợp 1: số lượng mua lớn hơn số tồn kho nên chỗ này báo lỗi');
  hoaDon4.soLuongMua = 7;
  print('Trường hợp 2: số lượng mua hợp lệ với điều kiện');
  hoaDon4.soLuongMua = 3; 

  print('\n\nTính toán tiền và lợi nhuận');
  print('Tổng tiền: ${hoaDon4.tinhTongTien()}');
  print('Lợi nhuận: ${hoaDon4.tinhLoiNhuanThucTe()}');

  /*
  3. Thống kê báo cáo:  
    o Doanh thu theo thời gian 
    o Lợi nhuận theo thời gian 
    o Top bán chạy 
    o Báo cáo tồn kho 
   */
  print('\n\n\n---------------------------------CÂU 3---------------------------------');
  double doanhThu = cuaHang.tinhTongDoanhThuTheoThoiGian(DateTime(2024, 11, 1), DateTime(2024, 11, 30));
  double loiNhuan = cuaHang.tinhTongLoiNhuanTheoThoiGian(DateTime(2024, 11, 1), DateTime(2024, 11, 30));

  print('\n\nDoanh thu theo thời gian');
  print('Tổng doanh thu tháng 11: \$${doanhThu}');

  print('\n\nLợi nhuận theo thời gian');
  print('Tổng lợi nhuận tháng 11: \$${loiNhuan}');

  print('\n\nTop điện thoại bán chạy');
  cuaHang.topDienThoaiBanChay();
  
  print('\n\nBáo cáo tồn kho');
  cuaHang.thongKeTonKho();
}