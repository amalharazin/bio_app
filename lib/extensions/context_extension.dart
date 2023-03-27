import 'package:flutter/material.dart';

extension ContexExtension on BuildContext{

  void showSnackBar({required String message,bool error=false}){
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(content: Text(message),
        backgroundColor:error? Colors.red:Colors.blue,
        duration: Duration(seconds: 3),
        elevation: 8,
        padding: EdgeInsetsDirectional.all(15),
        //margin: EdgeInsetsDirectional.all(20),
        // width: 30,
        dismissDirection: DismissDirection.vertical,
        onVisible: ()=>print('visible'),
        action: SnackBarAction(
          onPressed: (){},
          label: 'UNDO',
          textColor: Colors.yellow,
        ),

        // dismissDirection: DismissDirection.horizontal,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),

        ),

      ),

    );

  }
}