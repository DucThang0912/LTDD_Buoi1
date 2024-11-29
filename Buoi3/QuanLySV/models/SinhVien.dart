class SinhVien{
  String _maSV;
  String _hoTen;
  int _tuoi;
  double _diemTB;

  //Contructor
  SinhVien(this._maSV, this._hoTen, this._tuoi, this._diemTB);

  //Getter
  String get maSV => _maSV;
  String get hoTen => _hoTen;
  int get tuoi => _tuoi;
  double get diemTB => _diemTB;

  //Setter
  set maSV(String maSV) => _maSV = (maSV.isNotEmpty) ? maSV : _maSV;

  set hoTen(String hoTen) => _hoTen = (hoTen.isNotEmpty ? hoTen : _hoTen);

  set tuoi(int tuoi) => _tuoi = (tuoi > 0) ? tuoi : _tuoi;

  set diemTB(double diemTB) => _diemTB = (diemTB >= 0 && diemTB <= 10) ? diemTB : _diemTB;

  String xepLoai(){
    if(_diemTB >= 8.0) return 'Gioi';
    if(_diemTB >= 6.5) return 'Kha';
    if(_diemTB >= 5.0) return 'Trung binh';
    if(_diemTB >= 3.5) return 'Yeu';
    return 'Kem';
  }

  void ThongTinSinhVien(){
    print("-------------------------------");
    print("Ma Sinh Vien: $_maSV");
    print("Ho ten: $_hoTen");
    print("Tuoi: $_tuoi");
    print("Diem TB: $_diemTB");
    print("-------------------------------");
  }
}