import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tweet extends StatelessWidget {
  const Tweet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.redAccent])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Container(
              width: 400,
              height: 600,
              child: Card(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(onPressed: ()=>Navigator.pop(context), icon: const Icon(CupertinoIcons.back)),
                          SizedBox(width: 80,),
                          Text('Post Tweet',style: TextStyle(fontSize: 18),),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Row(
                          children: [
                            Icon(CupertinoIcons.bubble_left),
                            SizedBox(width: 10,),
                            SizedBox(
                              width: 250,
                              child: TextFormField(
                                maxLines: null,
                                decoration: const InputDecoration(
                                  hintText: 'Share your feelings here...',
                                  labelText: 'Tweet',
                                ),
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
