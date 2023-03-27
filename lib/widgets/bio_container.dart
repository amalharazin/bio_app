import 'package:flutter/material.dart';

class BioContainer extends StatelessWidget {
  const BioContainer({
    Key? key,
    required this.leading,
    required this.title,
    required this.subTitle,
    required this.trailing,
    required this.onPressed,
    this.marginButtom=0,
  }) : super(key: key);
  final String title;
  final String subTitle;
  final IconData leading;
  final IconData trailing;
  final void Function() onPressed;
  final double marginButtom;

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsetsDirectional.only(start: 30,end: 30,bottom: marginButtom),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow (
              color: Colors.black45,
              offset: Offset(0,3),
              blurRadius: 3
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(leading),
        subtitle: Text(subTitle),
        title: Text(title),
        trailing: IconButton(onPressed: onPressed,icon: Icon(trailing),),
      ),

    );
  }
}