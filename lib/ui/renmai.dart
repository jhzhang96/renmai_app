import 'package:flutter/material.dart';
import 'package:renmai_app/ui/persion_details_animator.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        //semanticChildCount: 5,
        scrollDirection: Axis.vertical,
         slivers: <Widget>[
           SliverAppBar(
             expandedHeight: 150.0,
             backgroundColor: Colors.lightBlueAccent,
             leading: IconButton(
               icon: Icon(
                 Icons.backspace,
                 semanticLabel: 'back',
               ),
               onPressed: () {
                 print('back');
               },
             ),

             actions: <Widget>[
               Center(
                 child: Row(
                   children: <Widget>[
                     Container(
                       child: RaisedButton(
                         elevation: 0.0,
                         color: Colors.transparent,
                         onPressed: _dongjian,
                         child: Text("洞见",
                           style: TextStyle(color: Colors.white,
                               fontSize: 16.9,
                               fontWeight: FontWeight.w500
                           ),
                         ),
                       ),
                     ),
                     Container(
                       child: SizedBox(
                         width: 120.0,
                         child: RaisedButton(
                           elevation: 0.0,
                           color: Colors.transparent,
                           onPressed: _shipin,
                           child: Text("视频",
                             style: TextStyle(color: Colors.white,
                                 fontSize: 16.9,
                                 fontWeight: FontWeight.w500
                             ),
                           ),
                         ),
                       ),
                     ),
                     Container(
                       child: SizedBox(
                         width: 97.0,
                         child: RaisedButton(
                           elevation: 0.0,
                           color: Colors.transparent,
                           onPressed: _renmai,
                           child: Text("人脉",
                             style: TextStyle(color: Colors.white,
                                 fontSize: 16.9,
                                 fontWeight: FontWeight.w500
                             ),
                           ),
                         ),
                       ),
                     )
                   ],
                 ),
               ),
               IconButton(
                 icon: Icon(
                   Icons.tune,
                   semanticLabel: 'filter',
                 ),
                 onPressed: () {
                   print('Filter button');
                 },
               ),
             ],

             floating: false,
             pinned: true,
             flexibleSpace: FlexibleSpaceBar(
               centerTitle: true,
               background: Image.asset('assets/images/gaki.jpg'),
             ),
           ),
           SliverFixedExtentList(
             delegate: SliverChildBuilderDelegate(
                   (BuildContext context,int index) => ListTile(
                 title: Container(
                     child: Column(
                       // crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Container(
                           child: Row(
                               children: <Widget>[
                                 Text("推荐人脉")
                               ]
                           ),
                         ),
                        // PersionDetailsAnimator()
                       ],
                     )
                 ),
               ),
               childCount: 3,

             ),
             itemExtent:250.0,
           ),

         ],

      ),

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.group), title: Text('职位')),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('探索')),
          BottomNavigationBarItem(icon: Icon(Icons.face), title: Text('我的')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.lightBlueAccent,
        onTap: _onItemTapped,
      ),

    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _dongjian() {
    print("洞见页");
  }

  void _shipin() {
    print("视频页");
  }

  void _renmai() {
    print("人脉页");
  }
}
