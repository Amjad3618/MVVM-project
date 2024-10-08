import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils{
static toastmesssage(String message){

  Fluttertoast.showToast(msg: message);
}
static errorAnotherFlutterbar(String message,BuildContext context){

showFlushbar(context: context, flushbar: Flushbar(
  forwardAnimationCurve: Curves.ease,
margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
padding: const EdgeInsets.all(20),
reverseAnimationCurve: Curves.easeOut,
positionOffset: 
20,
borderRadius: BorderRadius.circular(15),
icon: const Icon(Icons.error,color: Colors.white,),
  message: message,
  backgroundColor: Colors.red,
  flushbarPosition: FlushbarPosition.TOP,
  duration: const Duration(seconds: 3),
  
)..show(context)
);

}
static succesmesssageflushbar(String message,BuildContext context){

showFlushbar(context: context, flushbar: Flushbar(
  forwardAnimationCurve: Curves.ease,
margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
padding: const EdgeInsets.all(20),
reverseAnimationCurve: Curves.easeOut,
positionOffset: 
20,
borderRadius: BorderRadius.circular(15),
icon: const Icon(Icons.error,color: Colors.white,),
  message: message,
  backgroundColor: Colors.green,
  flushbarPosition: FlushbarPosition.TOP,
  duration: const Duration(seconds: 3),
  
)..show(context)
);

}
}