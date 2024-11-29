import 'models/NhanVien.dart';
import 'models/NhanVienBanHang.dart';

void main(){
  var nv = NhanVien('NV001', 'Duc Thang', 5000000);

  nv.hienThiThongTin();

  var nvbh = NhanVienBanHang('NV2', 'Nguyen He He', 8000000, 100000, 0.6);
  nvbh.hienThiThongTin();
}