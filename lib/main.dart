import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("GetX snackbar"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar("titele", "massege",
                    borderWidth: 1,
                    borderColor: Colors.orange,
                      barBlur: 5,
                      borderRadius: 15,
                      animationDuration: Duration(seconds: 3),
                      // backgroundGradient:Gradient.lerp(1.0, 2.0, 3.0) ,
                      // boxShadows:  ,
                      dismissDirection:DismissDirection.down,
                      reverseAnimationCurve: Curves.decelerate,
                      forwardAnimationCurve: Curves.easeOutQuart,
                      snackPosition: SnackPosition.TOP,
                      margin: EdgeInsets.all(10)
                    );
                  },
                  child: Text("snack bar"))
            ],
          ),
        ),
      ),
    );
  }
}
