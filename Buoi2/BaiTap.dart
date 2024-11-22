import 'dart:io';
import 'dart:math';

//Bai tap giai pt ax^2 + ax + c = 0

void main(){
  double a = 0, b = 0, c = 0;
  
  //input a
  do{
    stdout.write("Nhap he so a (a != 0): ");
    String? inputA = stdin.readLineSync();
    if(inputA != null){
      a = double.tryParse(inputA) ?? 0;
    }
    if(a == 0){
      print("Vui long nhap lai: ");
    }
  }while(a == 0);

  //input b
  stdout.write("Nhap he so b: ");
  String? inputB = stdin.readLineSync();
  if(inputB != null){
    b = double.tryParse(inputB) ?? 0;
  }

  //input c
  stdout.write("Nhap he so c: ");
  String? inputC = stdin.readLineSync();
  if(inputC != null){
    c = double.tryParse(inputC) ?? 0;
  }

  //Tim delta
  double delta = b*2 - 4*a*c;

  //Giai pt
  if(delta < 0){
    print("Phuong trinh vo nghiem");
  }else if(delta == 0){
    double x = -b / (2*a);
    x = double.parse(x.toStringAsFixed(2));
    print("Phuong trinh co nghiem kep x: $x");
  }else{
    double x1 = -b + sqrt(delta) / (2 * a);
    double x2 = -b - sqrt(delta) / (2 * a);
    print("Nghiem cua pt la: ");
    print("x1 = $x1");
    print("x2 = $x2");
  }
}