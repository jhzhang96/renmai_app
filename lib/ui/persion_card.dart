import 'package:flutter/material.dart';
import 'package:renmai_app/model/persion.dart';
import 'package:url_launcher/url_launcher.dart';

class PersionCard extends StatelessWidget {
  final PersionInfo persioninf;

 PersionCard(this.persioninf);

  BoxDecoration _createShadowRoundCorners() {
    return BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: new BorderRadius.circular(12.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
              color: Colors.black26, spreadRadius: 2.0, blurRadius: 10.0)
        ]);
  }

  Widget _createThumbnail() {
    return new ClipRRect(
      borderRadius: new BorderRadius.circular(8.0),
      child: Stack(
        children: <Widget>[
          Image.asset(persioninf.thumbnail),
          new Positioned(bottom: 12.0, right: 12.0, child: _creatLinkBotton())
        ],
      ),
    );
  }
  Widget _creatLinkBotton() {
    return Material(
      color: Colors.white24,
      type: MaterialType.circle,
      child: new IconButton(
          icon: Icon(Icons.link),
          onPressed: () async {
            //flutterWebviewPlugin.launch(course.url,hidden:false);
            if (await canLaunch(persioninf.url)) {
              await launch(persioninf.url);
            }
          }),
    );
  }
  Widget createCourseInfo() {
    return new Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 4.0, right: 4.0),
      child: Text(
        persioninf.name,
        style: TextStyle(color: Colors.white.withOpacity(0.85)),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125.0,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
      decoration: _createShadowRoundCorners(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 3,
            child: _createThumbnail(),
          ),
          Flexible(
            flex: 2,
            child: createCourseInfo(),
          ),
        ],
      ),
    );
  }
}
