class NhanVien{
  String _maNV;
  String _hoTen;
  double _luongCB;

  //Constructor
  NhanVien(this._maNV, this._hoTen, this._luongCB);

  //getter
  String get maNV => _maNV;
  String get hoTen => _hoTen;
  double get luongCB => _luongCB;

  //setter
  set maNV(String maNV) => _maNV = (maNV.isNotEmpty) ? maNV : _maNV;
  set hoTen(String hoTen) => _hoTen = (hoTen.isNotEmpty) ? hoTen : _hoTen;
  set luongCB(double luongCB) => _luongCB = (luongCB > 0) ? luongCB : _luongCB;

  double tinhLuong(){
    return _luongCB;
  } 

  void hienThiThongTin(){
    print('--------------------------');
    print('Ma nhan vien: $_maNV');
    print('Ten nhan vien: $_hoTen');
    print('Luong co ban: ${tinhLuong()}');
    print('--------------------------');
  }
}