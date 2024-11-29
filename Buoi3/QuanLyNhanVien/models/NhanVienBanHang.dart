import 'NhanVien.dart';

class NhanVienBanHang extends NhanVien{
  double _doanhSo;
  double _hoaHong;

  //constructor
  NhanVienBanHang(String maNV, String hoTen, double luongCB, this._doanhSo, this._hoaHong) : super(maNV, hoTen, luongCB);

  //getter
  double get doanhSo => _doanhSo;
  double get hoaHong => _hoaHong;

  //setter
  set doanhSo(double doanhSo) => _doanhSo = (doanhSo >= 0) ? doanhSo : _doanhSo;
  set hoaHong(double hoaHong) => _hoaHong = (hoaHong >= 0 && hoaHong <= 1) ? hoaHong : _hoaHong;

  @override
  double tinhLuong() {
    // TODO: implement tinhLuong
    return luongCB + (_doanhSo * _hoaHong);
  }

  @override
  void hienThiThongTin() {
    // TODO: implement hienThiThongTin
    super.hienThiThongTin();
    print('Doanh so: $_doanhSo');
    print('Hoa hong: $_hoaHong');
  }
}