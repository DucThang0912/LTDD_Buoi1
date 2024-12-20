import 'package:flutter/material.dart';

class baitap1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Hồ sơ"),
        ),
        body: Center(
          child: Container(
            child: Card(
              elevation: 5, // Đổ bóng cho Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: 250,
                height: 250,
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          "https://scontent-sin6-2.xx.fbcdn.net/v/t39.30808-1/459221213_3825051357814058_4068003644545891904_n.jpg?stp=dst-jpg_p160x160_tt6&_nc_cat=105&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeF5NMuBB1vR6ZxHYUc4n9k92TwOFar3rfvZPA4Vqvet-yQVBHDqSgCwcSpwSX7RPojfCVdxQohy-Ya9nuD1mxss&_nc_ohc=OTjR0D_rnVEQ7kNvgEbjI0a&_nc_zt=24&_nc_ht=scontent-sin6-2.xx&_nc_gid=AwYTLTcposGX4rybkeqOXTX&oh=00_AYDYttmgrnxeVarjtzZmdMIBaaWzyk94eOui1pUUZiCaZg&oe=6761544C"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Nguyễn Đức Thắng",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 5),
                        Text("ducthang@gmail.com"),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 5),
                        Text("0703635306"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
