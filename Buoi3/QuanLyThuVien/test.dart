import './models/DocGia.dart';
import './models/Sach.dart';

void main(){
  var dg = DocGia('DG001', 'Nguyen Duc Thang');
  dg.themSach(Sach('S001', 'Con duong ba chu', 'AKAY', true));

  dg.hienThiThongTin();
}