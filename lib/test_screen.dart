import 'package:flutter/material.dart';
class Testscreen extends StatefulWidget {
  const Testscreen({super.key});

  @override
  State<Testscreen> createState() {
   return _TestscreenState();
  }
}

class _TestscreenState extends State<Testscreen> {
  int count= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  count++;
                });
              } ,child: Text("+"),),
            SizedBox(width: 20,),
            Text("$count"),
            SizedBox(width: 20,),
            MaterialButton(
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  count--;
                });
              }, child: Text("-"),),
          ],
        ),
      ),
    );
  }
}
