import 'package:flutter/material.dart';

void main() {
  runApp(sliver());
}

class sliver extends StatelessWidget {
  const sliver({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.red,
              leading: Icon(Icons.person),
              title: Center(child: Text("S L I V E R A P P B A R")),
              expandedHeight: 300,
              pinned: true,

              actions: [
                IconButton(
                  icon: Icon(Icons.wallet),
                  onPressed: () {}
                  ),
                
              ],
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 400,
                    color: Colors.deepPurple,
                  ),
                  ),
              ),
            ),
            
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 400,
                    color: Colors.deepPurple,
                  ),
                  ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 400,
                    color: Colors.deepPurple,
                  ),
                  ),
              ),
            )
              ],
        )
      ),
    );
  }
}


