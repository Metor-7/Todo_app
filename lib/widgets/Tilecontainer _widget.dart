import 'package:flutter/material.dart';
import 'package:flutter_application_1todo_app/widgets/Tiletext.dart';

class Tilecontainer extends StatelessWidget {
  const Tilecontainer({
    super.key,
    required this.deviceSize,
  });

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
    width: deviceSize.width*0.9,
    height: deviceSize.height*0.13,
    margin:const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
    padding: const EdgeInsets.all (20),
    decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(35),
     color:Colors.blueGrey
    ),
    child: 
      Row(
       
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children:[
       Column(
         children: [
           Tiletext(
             text:"Title",
           textcolor:Colors.white,
           textSize:28,
           textFontweight:FontWeight.w900,
           ),
           Tiletext(
             text:"Description",
           textcolor:Colors.white,
           textSize:16,
           textFontweight:FontWeight.w500,
           ),
         ],
       ),
       Spacer()
       , Row(children: [
         IconButton(onPressed: (){}, icon: Icon(Icons.edit,
         color: Colors.white,
         size: 20,
         ),
         ),
         IconButton(onPressed: (){}, icon: Icon(Icons.delete,
         color: Colors.redAccent,
         size: 20,
         ),
     
       )],)
     ]),
    );
  }
}
