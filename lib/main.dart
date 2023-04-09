import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'First App',
      home: Scaffold(
          appBar: AppBar(title: Text("Воздушные шары"), centerTitle: true),
          backgroundColor: Color.fromARGB(255, 111, 231, 223),
          body: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              FirstLine(),
              SecondLine(),
              ThirdLine(),
            ],
          ),
    ),
      ),
  );
}


//ПЕРВАЯ ЛИНИЯ
class FirstLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BiggerYellowBalloon(),
        PinkBalloon(),
      ],
    );
  }
}

//ВТОРАЯ ЛИНИЯ
class SecondLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment:MainAxisAlignment.spaceAround,
      children: [
        PinkBalloon(),
        PinkBalloon(),
        PinkBalloon(),
      ],
    );
  }
}


//ТРЕТЬЯ ЛИНИЯ
class ThirdLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment:MainAxisAlignment.spaceAround,
      children: [
        PinkBalloon(),
        BiggerYellowBalloon(),
        PinkBalloon(),
      ],
    );
  }
}


//ЖЕЛТЫЙ ШАРИК
class BiggerYellowBalloon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
        image: AssetImage('assets/images/yellow_balloon.png'),
        height: 250,
        width: 160,
        
      );
  }
}


//РОЗОВЫЙ ШАРИК
class PinkBalloon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
        image: AssetImage('assets/images/pink_balloon.png'),
        height: 80, 
        width: 80,
        
      );
  }
}