import 'DienThoai.dart';
import 'HoaDon.dart';

class CuaHang{
  String _tenCH;
  String _diaChi;
  List<DienThoai> _danhSachDienThoai = [];
  List<HoaDon> _danhSachHoaDon = [];

  //constructor
  CuaHang(this._tenCH, this._diaChi);

  //getter
  String get tenCH => _tenCH;
  String get diaChi => _diaChi;

  //setter
  set tenCH(String tenCH) => _tenCH = (tenCH.isNotEmpty) ? tenCH : _tenCH;
  set diaChi(String diaChi) => _diaChi = (diaChi.isNotEmpty) ? diaChi : _diaChi;

  //Cac phuong thuc quan ly dien thoai
  void themDienThoai(DienThoai dt) => _danhSachDienThoai.add(dt);

  void capNhatThongTinDienThoai(DienThoai dt){
      for(int i = 0; i < _danhSachDienThoai.length; i++){
        if(_danhSachDienThoai[i].maDT == dt.maDT){
          _danhSachDienThoai[i] = dt;
          print('Cap nhat thanh cong!');
          return;
        }
      }
      print('Khong tim thay dien thoai co ma ${dt.maDT}');
  }

  void ngungKinhDoanhDienThoai(String maDT, bool trangThai){
    for(int i = 0; i < _danhSachDienThoai.length; i++){
        if(_danhSachDienThoai[i].maDT == maDT){
          _danhSachDienThoai[i].trangThai = trangThai;
          print('Da ngung kinh doanh dien thoai!');
          return;
        }
      }
      print('Khong tim thay dien thoai co ma ${maDT}');
  }

  void timKiemDienThoai(String timKiem){
    for(int i = 0; i < _danhSachDienThoai.length; i++){
      if(_danhSachDienThoai[i].maDT == timKiem || _danhSachDienThoai[i].tenDT == timKiem || _danhSachDienThoai[i].hangSX == timKiem){
        _danhSachDienThoai[i].hienThiThongTin();
      }
    }
  }

  void hienThiDanhSachDienThoai(){
    print('----------------------------');
    print('Ten cua hang: $_tenCH');
    print('Dia chi: $_diaChi');
    for(var dt in _danhSachDienThoai){
      dt.hienThiThongTin();
    }
    print('----------------------------');
  }

  //cac phuong thuc quan ly hoa don
  void themHoaDon(HoaDon hd) => _danhSachHoaDon.add(hd);

  void timKiemHoaDon(var timKiem){
    for(var hoadon in _danhSachHoaDon){
      if(hoadon.maHD == timKiem || hoadon.ngayBan == timKiem || hoadon.tenKH == timKiem || hoadon.sdtKH == timKiem){
        hoadon.hienThiHoaDon();
      }
    }
  }

  void hienThiDanhSachHoaDon(){
    print('----------------------------');
    print('Ten cua hang: $_tenCH');
    print('Dia chi: $_diaChi');
    for(var hd in _danhSachHoaDon){
      hd.hienThiHoaDon();
    }
    print('----------------------------');
  }

  //cac phuong thuc thong ke
  double tinhTongDoanhThuTheoThoiGian(DateTime tuNgay, DateTime denNgay){
    double tongDoanhThu = 0;
    for (var hd in _danhSachHoaDon) {
      if (hd.ngayBan.isAfter(tuNgay) && hd.ngayBan.isBefore(denNgay)) {
        tongDoanhThu += hd.tinhTongTien();
      }
    }
    return tongDoanhThu;
  }

  double tinhTongLoiNhuanTheoThoiGian(DateTime tuNgay, DateTime denNgay){
    double tongLoiNhuan = 0;
    for(var hd in _danhSachHoaDon){
      if (hd.ngayBan.isAfter(tuNgay) && hd.ngayBan.isBefore(denNgay)) {
        tongLoiNhuan += hd.tinhLoiNhuanThucTe();
      }
    }
    return tongLoiNhuan;
  }

  void topDienThoaiBanChay() {
    Map<String, int> soLuongBan = {};

    // duyệt tất cả hóa đơn để tính tổng số đt đã bán
    for (var hoaDon in _danhSachHoaDon) {
    for (var dienThoai in hoaDon.dienThoaiDuocBan) {
      soLuongBan[dienThoai.maDT] = (soLuongBan[dienThoai.maDT] ?? 0) + hoaDon.soLuongMua;
    }
  }

    // sắp xếp theo số lượng bán giảm dần
    var topBanChay = soLuongBan.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

    // in ra 5 đt bán chạy nhất
    print('Top 5 điện thoại bán chạy:');
    for (int i = 0; i < (topBanChay.length < 5 ? topBanChay.length : 5); i++) {
      var maDT = topBanChay[i].key;
      var soLuong = topBanChay[i].value;
      
      for (var dt in _danhSachDienThoai) {
        if (dt.maDT == maDT) {
          print('${i+1}. ${dt.tenDT} (Mã: $maDT) - Số lượng bán: $soLuong');
          break;
        }
      }
    }
  }

  void thongKeTonKho() {
  print('Báo cáo tồn kho:');
  print('----------------------------');
  
  List<DienThoai> conKinhDoanh = [];
  List<DienThoai> hetHang = [];
  List<DienThoai> sapHetHang = [];

  for (var dt in _danhSachDienThoai) {
    if (!dt.trangThai) {
      continue; // bỏ qua đt ngừng kinh doanh
    }
    
    if (dt.slTonKho == 0) {
      hetHang.add(dt);
    } else if (dt.slTonKho <= 10) {
      sapHetHang.add(dt);
    } else {
      conKinhDoanh.add(dt);
    }
  }

  print('Tổng số điện thoại: ${_danhSachDienThoai.length}');
  print('Số điện thoại còn kinh doanh: ${conKinhDoanh.length}');
  print('Số điện thoại sắp hết hàng (≤10 sản phẩm): ${sapHetHang.length}');
  print('Số điện thoại hết hàng: ${hetHang.length}');

  print('\nChi tiết các điện thoại sắp hết hàng:');
  for (var dt in sapHetHang) {
    print('- ${dt.tenDT} (Mã: ${dt.maDT}) - Tồn kho: ${dt.slTonKho}');
  }

  print('\nChi tiết các điện thoại hết hàng:');
  for (var dt in hetHang) {
    print('- ${dt.tenDT} (Mã: ${dt.maDT}) - Tồn kho: ${dt.slTonKho}');
  }
}
}