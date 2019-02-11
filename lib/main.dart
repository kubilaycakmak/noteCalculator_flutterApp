import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'testAPP',
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/info': (BuildContext context) => InfoPage(),
        '/hnotuhesapla': (BuildContext context) => HNotuHesap(),
        '/dnotuhesapla': (BuildContext context) => DNotuHesap(),
        '/gnotuhesapla': (BuildContext context) => GNotuHesap(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  static const AppbarColor = const Color(0xFF000080);
  static const ContainerColor = const Color(0xFF151026);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ContainerColor,
      appBar: AppBar(
        backgroundColor: AppbarColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.of(context).pushNamed('/info');
            },
          ),
          Container(
            width: 10,
          )
        ],
        centerTitle: true,
        title: Text(
          'Not Hesapla',
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 50,
          ),
          FlatButton(
            child: Text(
              'Harf Notu Hesapla',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w200,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/hnotuhesapla');
            },
          ),
          Container(
            height: 20,
          ),
          FlatButton(
            child: Text(
              'Dönem Ortalaması Hesapla',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w200,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/dnotuhesapla');
            },
          ),
          Container(
            height: 20,
          ),
          FlatButton(
            child: Text(
              'Genel Ortalama Hesapla',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w200,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/gnotuhesapla');
            },
          ),
        ],
      ),
    );
  }
}

class InfoPage extends StatelessWidget {
  static const AppbarColor = const Color(0xFF000080);
  static const ContainerColor = const Color(0xFF110d1e);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ContainerColor,
      appBar: AppBar(
        backgroundColor: AppbarColor,
        centerTitle: true,
        title: Text('Hakkında'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 30,
          ),
          Text(
            'Kubilay Çakmak Tarafından Dart dili kullanılarak yapılmıştır.',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class HNotuHesap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HNotuHesap();
  }
}

class _HNotuHesap extends State<HNotuHesap> {
  static const AppbarColor = const Color(0xFF000080);
  static const ContainerColor = const Color(0xFF110d1e);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppbarColor,
        title: Text('Harf Notu Hesaplama'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 30,
          ),
          Text(
            'Kubilay Çakmak Tarafından Dart dili kullanılarak yapılmıştır.',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class DNotuHesap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DNotuHesap();
  }
}

class _DNotuHesap extends State<DNotuHesap> {
  static const AppbarColor = const Color(0xFF000080);
  static const ContainerColor = const Color(0xFF110d1e);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    final myController = TextEditingController();

    // void initState() {
    //   super.initState();
    //   myController.addListener(textListener);
    // }

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppbarColor,
          title: Text('Dönem Notu Hesaplama'),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              child: TextField(
                onChanged: (text) {
                  // debugPrint("asd $text");
                },
                controller: myController,
                style: textStyle,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Ders Sayısı',
                    hintText: 'Lütfen Ders Sayısını Giriniz',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
              padding: EdgeInsets.only(top: 20, left: 30, right: 30),
            ),
            // ListView.builder(
            //     itemCount: _numberOfCourse.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return TextField();
            //     })
          ],
        ));
  }
}

class GNotuHesap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GNotuHesap();
  }
}

class _GNotuHesap extends State<GNotuHesap> {
  static const AppbarColor = const Color(0xFF000080);
  static const ContainerColor = const Color(0xFF110d1e);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppbarColor,
        title: Text('Genel Notu Hesaplama'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 30,
          ),
          Text(
            'Kubilay Çakmak Tarafından Dart dili kullanılarak yapılmıştır.',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
