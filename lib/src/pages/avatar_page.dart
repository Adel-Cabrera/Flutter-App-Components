import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Avatar Page",
        ),
        centerTitle: true,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(
              5.0,
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://fotografias.lasexta.com/clipping/cmsimages02/2018/04/06/EF762215-E37F-480C-9A33-B37E986BC3A8/58.jpg',
              ),
              radius: 25.0,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              right: 10.0,
            ),
            child: CircleAvatar(
              child: Text("SL"),
              backgroundColor: Colors.purple,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage(
            'assets/jar-loading.gif',
          ),
          image: NetworkImage(
            'https://fotografias.lasexta.com/clipping/cmsimages02/2018/04/06/EF762215-E37F-480C-9A33-B37E986BC3A8/58.jpg',
          ),
          fadeInDuration: Duration(
            milliseconds: 200,
          ),
        ),
      ),
    );
  }
}
