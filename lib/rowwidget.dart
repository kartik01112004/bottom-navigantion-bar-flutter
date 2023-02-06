import 'package:flutter/material.dart';

class BuildRow extends StatelessWidget {
  String txt,ans;
   BuildRow({Key? key,required this.ans, required this.txt
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _MediaQuery  = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: _MediaQuery.height *0.1,
          width: _MediaQuery.width *0.4,
          child: Text(
            txt,textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 20.0
            ),
          )
          ,),
        SizedBox(width: _MediaQuery.width * 0.00001,),
        Container(
          height: _MediaQuery.height *0.1,
          width: _MediaQuery.width *0.4,
          // margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 40.0),
          // padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 100.0),
          color: Colors.grey,
          child: Text(
            ans,textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20.0
            ),
          )
          ,),
      ],

    );
  }
}
