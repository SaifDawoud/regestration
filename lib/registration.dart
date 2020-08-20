import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BackGround(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: EdgeInsets.only(bottom: 90),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'WELCOME BACK',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Flutter',
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('Marathon',
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 26,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Container(
                    height: 50,
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38),
                              borderRadius: BorderRadius.circular(45)),
                          prefixIcon: Icon(
                            Icons.alternate_email,
                            color: Colors.white,
                          )),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 50,
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38),
                              borderRadius: BorderRadius.circular(45)),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          )),
                    )),


                FlatButton(
                  child: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
//              TextField(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text(
                      'Haven\'t Resitered Yet',
                      style: TextStyle(color: Colors.white),
                    ),
                    FlatButton(padding:EdgeInsets.all(0),child: Text('Sign up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}

class BackGround extends CustomPainter {
  Color _red = Color(0xFFEB4137);
  Color _orange = Color(0xFFFFA810);
  Color _dark = Color(0xFF262628);
  Color _blue = Color(0xFF2273D7);

  @override
  void paint(Canvas canvas, Size size) {
    _drawDarkBackGround(canvas, size);
    _drawOrange(canvas, size);
    _drawRedCurve(canvas, size);
    _drawBlueCurve(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  void _drawDarkBackGround(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = _dark;
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
  }

  void _drawBlueCurve(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = _blue;
    Path path = Path();
    path.lineTo(0, size.height * 0.85);
    path.quadraticBezierTo(size.width * 0.1, size.height - 20, size.width * 0.3,
        size.height * 0.92);
    path.quadraticBezierTo(size.width * 0.4, size.height * 0.9,
        size.width * 0.4, size.height * 0.95);
    path.quadraticBezierTo(size.width * 0.4, size.height + 10, size.width * 0.5,
        size.height * 0.93);
    path.quadraticBezierTo(size.width * 0.7 - 10, size.height * 0.8,
        size.width * 0.7 - 2, size.height * 0.90);
    path.quadraticBezierTo(size.width * 0.7, size.height + 10, size.width * 0.8,
        size.height * 0.95);
    path.quadraticBezierTo(
        size.width * 0.9, size.height * 0.9, size.width, size.height);

//    path.quadraticBezierTo(size.width*0.65,size.height *0.93, size.width *0.65, size.height*0.9);
//    path.quadraticBezierTo(size.width*0.95,size.height *0.93, size.width *0.95, size.height*0.97 );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  void _drawRedCurve(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = _red;
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.3,
        size.width * 0.1 + 35, size.height * 0.1 + 25);
    path.quadraticBezierTo(size.width * 0.2, size.height / 90, size.width * 0.5,
        size.height * 0.1);
    path.quadraticBezierTo(size.width * 0.9, size.height * 0.2, size.width, 0);

    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  void _drawOrange(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = _orange;
    Path path = Path();
    path.lineTo(0, 0);
    path.quadraticBezierTo(
        2, size.height * 0.4, size.width * 0.2 + 10, size.height * 0.3);
    path.quadraticBezierTo(size.width * 0.4 + 15, size.height * 0.2 + 5,
        size.width * 0.4, size.height * 0.4);
    path.quadraticBezierTo(size.width * 0.4 - 10, size.height * 0.5,
        size.width * 0.6, size.height * 0.4 + 20);
    path.quadraticBezierTo(
        size.width, size.height * 0.3, size.width, size.height * 0.5);

    path.lineTo(size.width, size.height * 0.5);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }
}
