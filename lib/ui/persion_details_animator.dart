import 'package:renmai_app/repo/repo.dart';
import 'package:renmai_app/ui/persion_detail_page.dart';
import 'package:flutter/material.dart';
class PersionDetailsAnimator extends StatefulWidget {
  @override
  _PersionDetailsAnimatorState createState() => _PersionDetailsAnimatorState();
}

class _PersionDetailsAnimatorState extends State<PersionDetailsAnimator> with SingleTickerProviderStateMixin  {
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 1780)
    );
    super.initState();
    _controller.forward();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return
        PersionDetailPage(persioninfo: RepoData.bawp,
     controller: _controller,
     );

  }
}
