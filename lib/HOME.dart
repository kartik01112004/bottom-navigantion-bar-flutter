import 'package:flutter/material.dart';
import 'package:firstproject/rowwidget.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _MediaQuery  = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('General details of MMDU student'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent[400],
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: _MediaQuery.height * 0.2,
            // alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.deepPurpleAccent),
                shape: BoxShape.circle,
                image: const DecorationImage(
                    image: AssetImage('assets/kartik .jpg'),
                    fit: BoxFit.contain)

            ),
            // child: ClipRRect(
            //
            //     child: Image.asset('assets/kartik .jpg',fit: BoxFit.fill,)),
            // child: Image(
            //     image: AssetImage('assets/kartik .jpg'),
            //
            // ),
          ),


          BuildRow(txt: "Name", ans: "Kartik"),
          BuildRow(txt: "Roll No", ans: "2025"),
          BuildRow(txt: "Year", ans: "2025"),
          BuildRow(txt: "Dept", ans: "ans"),
          BuildRow(txt: "Email", ans: "tes@gmail.com"),
          BuildRow(txt: "txt", ans: "ans")
        ],
      ),
    );
  }
}
