import 'package:flutter/material.dart';

class BannerPage extends StatefulWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  State<BannerPage> createState() => _BannerPageState();
}

class _BannerPageState extends State<BannerPage> {

  double _screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _buildBody,
    );
  }

  get _buildBody{
    return Container(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            _buildBanner(
                "https://cdn.vox-cdn.com/thumbor/iqbKqSTMnIh5kMdWAw0M0qIAORM=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/15969338/surprise_marvel_releases_a_new_full_trailer_and_poster_for_avengers_endgame_social.jpg"
                // "https://s2.glbimg.com/Wd3Jk-sksby1kKTmnAV8PRDZUVI=/640x424/top/i.glbimg.com/og/ig/infoglobo/f/original/2020/11/13/away.png"
            ),
            _buildComplexBox("https://cdn.vox-cdn.com/thumbor/iqbKqSTMnIh5kMdWAw0M0qIAORM=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/15969338/surprise_marvel_releases_a_new_full_trailer_and_poster_for_avengers_endgame_social.jpg",
                "Avenger",
                "Marvel's The Avengers or simply The Avengers, is a 2012 American superhero film based on the Marvel Comics superhero team of the same name."),
            _buildComplexBox("https://cdn.vox-cdn.com/thumbor/iqbKqSTMnIh5kMdWAw0M0qIAORM=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/15969338/surprise_marvel_releases_a_new_full_trailer_and_poster_for_avengers_endgame_social.jpg",
                "Avenger",
                "Marvel's The Avengers or simply The Avengers, is a 2012 American superhero film based on the Marvel Comics superhero team of the same name."),
            _buildComplexBox("https://cdn.vox-cdn.com/thumbor/iqbKqSTMnIh5kMdWAw0M0qIAORM=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/15969338/surprise_marvel_releases_a_new_full_trailer_and_poster_for_avengers_endgame_social.jpg",
                "Avenger",
                "Marvel's The Avengers or simply The Avengers, is a 2012 American superhero film based on the Marvel Comics superhero team of the same name."),
            _buildComplexBox("https://cdn.vox-cdn.com/thumbor/iqbKqSTMnIh5kMdWAw0M0qIAORM=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/15969338/surprise_marvel_releases_a_new_full_trailer_and_poster_for_avengers_endgame_social.jpg",
                "Avenger",
                "Marvel's The Avengers or simply The Avengers, is a 2012 American superhero film based on the Marvel Comics superhero team of the same name."),
            _buildComplexBox("https://cdn.vox-cdn.com/thumbor/iqbKqSTMnIh5kMdWAw0M0qIAORM=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/15969338/surprise_marvel_releases_a_new_full_trailer_and_poster_for_avengers_endgame_social.jpg",
                "Avenger",
                "Marvel's The Avengers or simply The Avengers, is a 2012 American superhero film based on the Marvel Comics superhero team of the same name."),

            _buildComplexBox("https://cdn.vox-cdn.com/thumbor/iqbKqSTMnIh5kMdWAw0M0qIAORM=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/15969338/surprise_marvel_releases_a_new_full_trailer_and_poster_for_avengers_endgame_social.jpg",
                "Avenger",
                "Marvel's The Avengers or simply The Avengers, is a 2012 American superhero film based on the Marvel Comics superhero team of the same name."),
          ],
        ),
      ),
    );
  }

  _buildBanner(String img){
    double h = 600;
    return Container(
      width: _screenWidth,
      height: h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _buildBannerBg(img, h),
          _buildBannerShade,
          _buildBannerContent,
        ],
      ),
    );
  }

  // have parameters no use get before
  _buildBannerBg(String img, double h){
    return Container(
      width: _screenWidth,
      height: h,
      child: Image.network(
        img,
        fit: BoxFit.cover,
        alignment: Alignment(0.1, 0),
      ),
    );
  }

  //use get before when function no pram
  get _buildBannerShade => Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0.05, 1.15],
            colors: [
              Colors.black,
              Colors.black.withOpacity(0),
            ]
        )
    ),
  );

  get _buildBannerContent => Container(
    width: _screenWidth,
    height: 300,
    // color: Colors.pink,
    child: Column(
      children: [
        Text("N SERIES", style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),),
        Text("A W A Y", style: TextStyle(color: Colors.white, fontSize: 100,fontWeight: FontWeight.bold),),
        Text("Rousing . Emotional . Exciting . Romatic . Sci-Fi TV",
          style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(Icons.check,color: Colors.white),
                Text("My List", style: TextStyle(color: Colors.white),),
              ],
            ),
            RaisedButton(
              child: Row(
                children: [
                  Icon(Icons.play_arrow),
                  Text("Play",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              onPressed: (){},
            ),
            Column(
              children: [
                Icon(Icons.info_outline, color: Colors.white),
                Text("Info", style: TextStyle(color: Colors.white),),
              ],
            ),
          ],
        ),
      ],
    ),

  );

  _buildComplexBox (String img, String title, String body){
    return Container(
      width: _screenWidth,
      height: 150,
      color: Colors.black,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                _buildCircleImage(img),
                Positioned(
                  bottom: 10,
                  child: Container(
                    alignment: Alignment.center,
                    width: 80,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink.withOpacity(0.9),
                    ),
                    child: Text(title,style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 20),),
                Container(
                  width: 500,
                  height: 100,
                  child: Text(body,
                    overflow: TextOverflow.fade ,
                    style: TextStyle(fontSize: 17, color: Colors.white),),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  _buildCircleImage(String img){
    return Container(
      width: 120,
      height: 120,
      margin: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(img),
              fit: BoxFit.cover,
            )
        ),
      ),
    );
  }


}
