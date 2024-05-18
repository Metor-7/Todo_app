import 'package:flutter/material.dart';  

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  var titleTextController=TextEditingController();
    var descriptionTextController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text("Create A Todo")
        // ignore: prefer_const_constructors
        
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextFormField(
          controller: titleTextController,
          decoration: InputDecoration(
            hintText: "Title",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
           ),
        )
        

        ])
      

      );
    
  }
}