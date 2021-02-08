
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliver_fab/sliver_fab.dart';

class ExampleTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Builder(builder:(context){
        return SliverFab(
          floatingWidget: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed:
          ()=> Scaffold.of(context).showSnackBar(SnackBar(content: Text('HEllO FAB PRESSED')))),
          expandedHeight: 256.0,
          slivers: <Widget>[
            SliverAppBar(
              title: Text('Example 1'),
              pinned: true,
              expandedHeight: 256.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset('assets/photo1.jpg',fit: BoxFit.cover,),
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

