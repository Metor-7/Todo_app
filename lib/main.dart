import 'package:flutter/material.dart';
import 'package:flutter_application_1todo_app/model/todo_model.dart';
import 'package:flutter_application_1todo_app/screens/create_screen.dart';
import 'package:flutter_application_1todo_app/widgets/Tilecontainer%20_widget.dart';
import 'package:flutter_application_1todo_app/widgets/Tiletext.dart';
void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Todo App Frank'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
  Size  deviceSize=MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
         
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
               width: deviceSize.width*0.9,
               height: deviceSize.height*0.13,
               margin:const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
               padding: const EdgeInsets.all (20),
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color:Colors.deepPurpleAccent
                
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
               ),
        
                Container(
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
               ),
               ...List.generate(todolist.length, (index){
                return Tilecontainer(deviceSize: deviceSize);
               }
               )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){

        Navigator.push(context, MaterialPageRoute(builder: (context){
        return const CreateScreen();
      }));
      },
      
      child: Icon(Icons.add),),
  
    );
  }
}




 