import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:puzzle/view/color_chart.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.orange])),
      child: BackdropScaffold(
        backgroundColor: Colors.transparent,
        appBar: BackdropAppBar(
          backgroundColor: Colors.transparent,
        ),
        backLayerBackgroundColor: Colors.transparent,
        backLayer:  Center(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              CircleAvatar(
                backgroundImage:  NetworkImage('https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                radius: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:  [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:  [
                        GestureDetector(
                          child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.add)),
                          onTap: () {

                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Text('Akshay Nandhu',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),),

              const SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.edit_outlined)),

                  SizedBox(width: 20,),

                  CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.share_outlined)),
                ],
              )

            ],
          ),
        ),
        headerHeight: 300,
        frontLayer: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Tweet()));
            },
            child: const Icon(Icons.add),
            backgroundColor: Colors.redAccent,
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context,int index){
                  return Container(
                      width: 150,
                      height: 150,
                      child: Card());
                }
            ),
          ),
        ),
      ),
    );
  }
}
