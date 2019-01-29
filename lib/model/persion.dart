import 'package:meta/meta.dart';

class Persion{
  Persion({
    @required this.persioninfom
});
  final List<PersionInfo> persioninfom;
}

class PersionInfo {
  PersionInfo({
    @required this.name,
    @required this.identity,
    @required this.influence,
    @required this.thumbnail,
    @required this.samefriends,
    @required this.url

});
  final String name;
  final String influence;
  final String identity;
  final String samefriends;
  final String thumbnail;
  final String url;
}