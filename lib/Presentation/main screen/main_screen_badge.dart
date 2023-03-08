import 'package:disabilities/app/utils/sounds.dart';
import 'package:disabilities/app/utils/static_var.dart';
import 'package:flutter/material.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
           body:SizedBox(
             width:double.infinity,
             height: 800,
             child: ListView.builder(
                itemCount:3,
                 physics:const NeverScrollableScrollPhysics(),
                 itemBuilder: (c,index){
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: GestureDetector(
                   onPanStart: (p){
                     Sounds.start(StaticVar().homeBadgeSound[index]);
                   },
                   // onTap: (){
                   //   Sounds.start(StaticVar().homeBadgeSound[index]);
                   //   print("taped");
                   // },
                   child: Container(
                     height: 200,
                     decoration: BoxDecoration(
                       color: Colors.blue,
                       border: Border.all(
                         color: Colors.grey.shade900,
                         width: .2,
                       ),
                     ),
                   ),
                 ),
               );
             }),
           ),
    );
  }
}
