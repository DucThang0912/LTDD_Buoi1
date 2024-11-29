import 'SinhVien.dart';

class LopHoc {
  String _tenLop;
  List<SinhVien> _danhSachSV = [];

  //Constructor
  LopHoc(this._tenLop);

  //Getter
  String get tenLop => _tenLop;
  List<SinhVien> get danhSachSV => _danhSachSV;

  //Setter
  set tenLop(String tenLop) => _tenLop = (tenLop.isNotEmpty) ? tenLop : _tenLop;

  //Them sinh vien
  void themSinhVien(SinhVien sv) => _danhSachSV.add(sv);

  //Hien thi danh sach sinh vien
  void hienThiDanhSach(){
    print('-------------------------');
    print('Lop: $_tenLop');
    for(var sv in _danhSachSV){
      print('Thong tin sinh vien');
      sv.ThongTinSinhVien();
      sv.xepLoai();
    }
    print('-------------------------');
  }
}