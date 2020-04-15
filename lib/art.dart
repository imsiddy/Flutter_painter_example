import 'package:flutter/material.dart';

class Art extends CustomPainter{
  @override 
  void paint(Canvas canvas,Size size){

    Paint paintbrush = Paint();
    paintbrush.color = Colors.blue;
    Paint nose= Paint();
    nose.color=Colors.pinkAccent;
    canvas.drawCircle(Offset(size.width/2, size.height/2), 50, paintbrush);
    canvas.drawRect(Rect.fromCenter(center: Offset(size.width/2,size.height/2 +50), height:100,width: 100), paintbrush);
    canvas.drawOval(Rect.fromCenter(center: Offset(size.width/2,size.height/2 +25), height:20,width: 40), nose);
    canvas.drawOval(Rect.fromCenter(center: Offset(size.width/2 -20 ,size.height/2), height:30,width: 8), nose);
    canvas.drawOval(Rect.fromCenter(center: Offset(size.width/2 +20,size.height/2), height:30,width: 8), nose);
    

  }
  
  @override
  bool shouldRepaint(CustomPainter oldDelegate){
    return false;
  }
}