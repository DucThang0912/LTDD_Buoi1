class Sach{
  String _maSach;
  String _tenSach;
  String _tacGia;
  bool _trangThaiMuon;
  //Contructor
  Sach(this._maSach, this._tenSach, this._tacGia, this._trangThaiMuon);

  //Getter
  String get maSach => _maSach;
  String get tenSach => _tenSach;
  String get tacGia => _tacGia;
  bool get trangThaiMuon => _trangThaiMuon;

  //Setter

  set maSach(String maSach) => _maSach = (maSach.isNotEmpty) ? maSach : _maSach;
  set tenSach(String tenSach) => _tenSach = (tenSach.isNotEmpty) ? tenSach : _tenSach;
  set tacGia(String tacGia) => _tacGia = (tacGia.isNotEmpty) ? tacGia : _tacGia;
  set trangThaiMuon(bool trangThaiMuo) => _trangThaiMuon = trangThaiMuon;

  void thongTinSach(){
    print('-------------------');
    print('Ma sach:$_maSach');
    print('Ten sach:$_tenSach');
    print('Tac gia:$_tacGia');
    print('Trang thai muon:$_trangThaiMuon');
    print('-------------------');
  }
}