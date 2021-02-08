import 'package:flutter/material.dart';
import 'package:sliver_fab/sliver_fab.dart';

class ExampleOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Builder(builder:(context){
        return SliverFab(
          floatingWidget: Container(
            height: 100,
            width: 100,
            child: ClipOval(
              child: Image.asset('assets/photo.jpg',fit: BoxFit.fill,),
            ),
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 8.0,
              )
            ),
          ),
          expandedHeight: 256.0,
          floatingPosition: FloatingPosition(top: -20 , left:150),
          slivers: <Widget>[
            SliverAppBar(
              title: Text('Example 1'),
              pinned: true,
              expandedHeight: 256.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset('assets/prophoto.jpg',fit: BoxFit.cover,),
              ),
            ),
            SliverList(delegate: 
            SliverChildListDelegate(
              List.generate(15, (int index) => ListTile(title: Text('Index $index'),))
            )
            )
            
          ],
        );
        
      }),
    );
  }
}

