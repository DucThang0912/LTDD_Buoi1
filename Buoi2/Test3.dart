void main(){
  Object obj = "Hello";

  if(obj is String){
    print("OBJ la String");
  }

  if(obj is! int){
    print("OBJ khong phai la int");
  }

  String str = obj as String;
  print(str.toUpperCase());
}