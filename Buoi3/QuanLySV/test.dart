import 'models/LopHoc.dart';
import 'models/SinhVien.dart';
import 'dart:io';

void Menu(){
  print("-------------------------------");
  print("1.Them sinh vien");
  print("2. Xuat danh sach tat ca sinh vien");
  print("0. Thoat");
  print("-------------------------------");
}

void main(){
  int n = 0;

  print("Nhap ten lop: ");
  String lp = stdin.readLineSync()!;
  var lop = LopHoc(lp);
  do{
    Menu();

    print("Nhap lua chon: ");
    n = (int.parse(stdin.readLineSync()!));

    switch(n){
      case 1:
        print("Nhap ma sv: ");
        String maSV = stdin.readLineSync()!;
        print("Nhap ho ten");
        String hoTen = stdin.readLineSync()!;
        print("Nhap tuoi: ");
        int? tuoi = int.parse(stdin.readLineSync()!);
        print("Nhap diem tb: ");
        double diemTB = double.parse(stdin.readLineSync()!);

        lop.themSinhVien(SinhVien(maSV, hoTen, tuoi, diemTB));
        break;
      case 2: 
        lop.hienThiDanhSach();
    }
  }while(n != 0);
}