import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfest_app/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';

class SponsorPage extends StatelessWidget {
  static const String routeName = "/sponser";

  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      title: "Sponsers",
      body: ListView(
        children: <Widget>[
          SponsorImage(
            imgUrl:
                "https://developers.google.com/community/gdg/images/logo-lockup-gdg-horizontal.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl:
                "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Kotlin-logo.svg/220px-Kotlin-logo.svg.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl:
                "https://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19748.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl:
                "https://resources.jetbrains.com/storage/products/jetbrains/img/meta/preview.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl:
                "https://images.g2crowd.com/uploads/product/image/large_detail/large_detail_0016c93c710cf35990b999cba3a59bae/firebase.png",
          )
        ],
      ),
    );
  }
}

class SponsorImage extends StatelessWidget {
  final String imgUrl;

  const SponsorImage({Key key, this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CachedNetworkImage(
          imageUrl: imgUrl,
          height: 200,
          width: 200,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
