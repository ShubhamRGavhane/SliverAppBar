import 'package:flutter/material.dart';

void main() {
  runApp(page());
}


class page extends StatelessWidget {
  const page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
             
              pinned: true,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              )),
            
              flexibleSpace: FlexibleSpaceBar(
                background:Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 75,),
                    Icon(Icons.group , size: 25, color: Colors.white,),
                    SizedBox(width: 25,),
                    Text("Chat",style: TextStyle(fontSize: 20 , color:Colors.white),),
                    SizedBox(width: 25,),
                    Text("Group", style: TextStyle(fontSize: 20 ,color:Colors.white),),
                    SizedBox(width: 25,),
                    Text("Status",style: TextStyle(fontSize: 20 , color:Colors.white),),
                    SizedBox(width: 25,),
                    Text("Calls",style: TextStyle(fontSize:  20, color:Colors.white),),
                    SizedBox(width: 25,),
                  ],
                 ),
                ) ,
                
                ),

              title: Text("Whatsapp"),
              expandedHeight: 100,
             

              actions: [
                 IconButton(onPressed: (){}, icon: Icon( Icons.camera)),
                 IconButton(onPressed: (){}, icon: Icon( Icons.wifi)),
                 IconButton(onPressed: (){}, icon: Icon( Icons.more_vert)),
              ],
            ),

          SliverList(delegate: 
          SliverChildBuilderDelegate((context, index) {
            return  ListTile(
                title: Text('Shubham'),
                subtitle: Text('Hii'),
                leading: Image.asset('lib/image/download.png'),
                trailing: Text('2:25'),
               );
          },))

          ],
        ),
      ),
    );
  }
}
