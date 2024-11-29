import 'DienThoai.dart';

class HoaDon{
  String _maHD;
  DateTime _ngayBan;
  List<DienThoai> _dienThoaiDuocBan = [];
  int _soLuongMua;
  double _giaBanThuc;
  String _tenKH;
  String _sdtKH;

  //constructor
  HoaDon(this._maHD, this._ngayBan, this._soLuongMua, this._giaBanThuc, this._tenKH, this._sdtKH);

  //getter
  String get maHD => _maHD;
  DateTime get ngayBan => _ngayBan;
  List<DienThoai> get dienThoaiDuocBan => _dienThoaiDuocBan;
  int get soLuongMua => _soLuongMua;
  double get giaBanThuc => _giaBanThuc;
  String get tenKH => _tenKH;
  String get sdtKH => _sdtKH;

  //setter
  set maHD(String maHD) => _maHD = (maHD.startsWith('HD-') || RegExp(r'^\d{3}$').hasMatch(maHD.substring(3))) ?  maHD : _maHD; //bat buoc nhap la: HD-XXX
  set ngayBan(DateTime ngayBan) => _ngayBan = (ngayBan.isAfter(DateTime.now())) ? ngayBan : _ngayBan; //ngay ban phai sau ngay hien tai
  set soLuongMua(int soLuongMua){
    if(soLuongMua > 0){
      bool kiemtra = true; //tao bien kiem tra luon dung
      for(var dt in _dienThoaiDuocBan){
        if(soLuongMua > dt.slTonKho){
          print('So luong mua lon hon so luong ton kho!');
          kiemtra = false; //neu sai thi tra ve false va break vong for
          break;
        }
      }
      _soLuongMua = kiemtra ? soLuongMua : _soLuongMua;
    }
  }
  set giaBanThuc(double giaBanThuc) => _giaBanThuc = (giaBanThuc > 0) ? giaBanThuc : _giaBanThuc;
  set tenKH(String tenKH) => _tenKH = (tenKH.isNotEmpty) ? tenKH : _tenKH;
  set sdtKH(String sdtKH) => _sdtKH = (RegExp(r'^0[0-9]{9}$').hasMatch(sdtKH)) ? sdtKH : _sdtKH;

  void themDienThoai(DienThoai dt) => _dienThoaiDuocBan.add(dt);

  double tinhTongTien() {
    return _soLuongMua * _giaBanThuc;
  }

  double tinhLoiNhuanThucTe() {
    double loiNhuan = 0;
    for (var dt in _dienThoaiDuocBan) {
      /*
      cong thuc tinh loi nhuan thuc te la: 
        Loi nhuan thuc te = (gia ban thuc te - gia nhap) * so luong ban
      so luong ban la _soLuongMua
      */
        loiNhuan += (dt.giaBan - dt.giaNhap) * _soLuongMua;
    }
    return loiNhuan;
  }

  void hienThiHoaDon() {
    print('----------------------------');
    print('Ma hoa don: $_maHD');
    print('Ngay ban: $_ngayBan');
    print('Ten khach hang: $_tenKH');
    print('SDT khach hang: $_sdtKH');
    print('Gia ban thuc te: $_giaBanThuc');
    print('So luong mua: $_soLuongMua');
    
    print('Dien thoai duoc ban:');
    for (var dt in _dienThoaiDuocBan) {
      dt.hienThiThongTin();
    }
    print('----------------------------');
  }

}