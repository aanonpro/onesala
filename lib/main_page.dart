import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  double _screenWidth = 0;

  @override
  Widget build(BuildContext context) {
     _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBodyComplexBox,
      bottomNavigationBar: _buildBottomNavigation,
    );
  }

  get _buildBodyComplexBox {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildComplexBox("https://cdn.vox-cdn.com/thumbor/iqbKqSTMnIh5kMdWAw0M0qIAORM=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/15969338/surprise_marvel_releases_a_new_full_trailer_and_poster_for_avengers_endgame_social.jpg",
              "Avenger",
              "Marvel's The Avengers or simply The Avengers, is a 2012 American superhero film based on the Marvel Comics superhero team of the same name."),
          _buildComplexBox("https://m.media-amazon.com/images/M/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_FMjpg_UX1000_.jpg",
              "Avatar",
              "Avatar is a 2009 epic science fiction film directed, written, co-produced, and co-edited by James Cameron and starring Sam Worthington, Zoe Saldana,"),
        ],
      ),
    );
  }

  _buildComplexBox (String img, String title, String body){
    return Container(
      width: _screenWidth,
      height: 150,
      color: Colors.indigo.withOpacity(0.2),
      child: Row(
        children: [
          _buildCircleImage(img),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 20),),
              Container(
                width: 200,
                height: 100,
                child: Text(body,
                  overflow: TextOverflow.fade ,
                  style: TextStyle(fontSize: 17),),
              ),

            ],
          ),
        ],
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

  get _buildBottomNavigation => BottomAppBar(
    color: Colors.yellow,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(icon: Icon(Icons.home), onPressed:(){

        },),
        IconButton(icon: Icon(Icons.person), onPressed:(){

        },),
        IconButton(icon: Icon(Icons.play_circle_outline), onPressed:(){

        },),
        IconButton(icon: Icon(Icons.group), onPressed:(){

        },),
        IconButton(icon: Icon(Icons.menu), onPressed:(){

        },),
      ],
    ),
  );

  get _buildAppBar => AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(child: Text("Latest"),onTap: (){
          print("Latest clicked");
        },),
        InkWell(child: Text("Popular"),onTap: (){
          print("popular clicked");
        },),
        InkWell(child: Text("Favorite"),onTap: (){
          print("favorite clicked");
        },),
      ],
    ),

  );

  get _buildBody{
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _buildBox(Colors.pink,h:200),
          _buildBox(Colors.indigo, h: 150),
          _buildBox(Colors.lime),

        ],
      ),
    );
  }

  _buildBox(Color color,{double w =100, double h=100}) => Container(
    width: w,
    height: h,
    color: color, // color before is from paramete above
  );
}
