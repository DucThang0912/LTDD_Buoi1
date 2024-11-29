import 'Sach.dart';

class DocGia{
  String _maDG;
  String _hoTen;
  List<Sach> _danhSachMuon = [];

  //constructor
  DocGia(this._maDG, this._hoTen);

  //getter
  String get maDG => _maDG;
  String get hoTen => _hoTen;
  List<Sach> get danhSachMuon => _danhSachMuon;

  //setter
  set maDG(String maDG) => _maDG = (maDG.isNotEmpty) ? maDG : _maDG;
  set hoTen(String hoTen) => _hoTen = (hoTen.isNotEmpty) ? hoTen : _hoTen;
  

  //them sach
  void themSach(Sach s) => _danhSachMuon.add(s);

  //hien thi
  void hienThiThongTin(){
    print('===============================');
    print('Ma doc gia: $_maDG');
    print('Ho ten: $_hoTen');
    for(var s in _danhSachMuon){
      s.thongTinSach();
    }
  }
}