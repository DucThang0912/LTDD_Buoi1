class DienThoai {
  String _maDT;
  String _tenDT;
  String _hangSX;
  double _giaNhap;
  double _giaBan;
  int _slTonKho;
  bool _trangThai; //con kinh doanh hay ko

  //constructor
  DienThoai(this._maDT, this._tenDT, this._hangSX, this._giaNhap, this._giaBan, this._slTonKho, this._trangThai);

  //getter
  String get maDT => _maDT;
  String get tenDT => _tenDT;
  String get hangSX => _hangSX;
  double get giaNhap => _giaNhap;
  double get giaBan => _giaBan;
  int get slTonKho => _slTonKho;
  bool get trangThai => _trangThai;

  //setter
  set maDT(String maDT) => _maDT = (maDT.startsWith('DT-') || RegExp(r'^\d{3}$').hasMatch(maDT.substring(3))) ? maDT : _maDT; //bat buoc nhap la: DT-XXX
  set tenDT(String tenDT) => _tenDT = (tenDT.isNotEmpty) ? tenDT : _tenDT;
  set hangSX(String hangSX) => _hangSX = (hangSX.isNotEmpty) ? hangSX : _hangSX;
  set giaNhap(double giaNhap) => _giaNhap = (giaNhap > 0) ? giaNhap : _giaNhap;
  set giaban(double giaBan) => _giaBan = (giaBan > 0 && giaBan > _giaNhap) ? giaBan : _giaBan;
  set slTonKho(int slTonKho) => _slTonKho = (slTonKho >= 0) ? slTonKho : _slTonKho;
  set trangThai(bool trangThai) => _trangThai = trangThai;

  //tinh loi nhuan
  double tinhLoiNhuan(){
    return (_slTonKho * _giaBan) - _giaNhap;
  }

  //kiem tra co the ban hay khong
  bool kiemTraBan(){
    if(_slTonKho > 0 && trangThai == true) return true;
    return false;
  }

  //hien thi thong tin
  void hienThiThongTin(){
    print('----------------------------');
    print('Ma dien thoai: $_maDT');
    print('Ten dien thoai: $_tenDT');
    print('Hang san xuat: $_hangSX');
    print('Gia nhap: $_giaNhap');
    print('Gia ban: $_giaBan');
    print('So luong ton kho: $_slTonKho');
    print('Trang thai kinh doanh: ${kiemTraBan() ? 'Con kinh doanh' : 'Khong con kinh doanh'}');
    print('----------------------------');
  }
}