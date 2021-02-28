import 'package:flutter/material.dart';
import 'burst.dart';
import 'user.dart';
import 'timeline.dart';
import 'home.dart';
import 'workout.dart';
import 'meals.dart';

void main() {
  runApp(MyApp());
}

List<int> categories = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _myPage = PageController(initialPage: 0);
  PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.95);
  ScrollController _scrollController = ScrollController();

  void onTabTapped(int index) {
    controller.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }

  void onDayCarChange(int index) {
    _scrollController.jumpTo(index * 64.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Title"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Hero(tag: "User", child: Icon(Icons.account_circle_outlined)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => User()),
              );
            },
          ),
        ],
      ),
      body: PageView(
        controller: _myPage,
        onPageChanged: (int) {
          print('Page Changes to index $int');
        },
        children: [
          home(context),
          timeline(context),
          workout(context),
          meals(context),
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  icon: Icon(Icons.home_outlined),
                  onPressed: () {
                    setState(() {
                      _myPage.jumpToPage(0);
                    });
                  }),
              IconButton(
                  icon: Icon(Icons.timeline_outlined),
                  onPressed: () {
                    setState(() {
                      _myPage.jumpToPage(1);
                    });
                  }),
              Container(
                width: 48,
                child: FloatingActionButton(
                    heroTag: "Burst",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Burst()),
                      );
                    },
                    tooltip: 'Burst',
                    child: Icon(
                      Icons.bolt,
                      size: 36,
                    )),
              ),
              IconButton(
                  icon: Icon(Icons.fitness_center_outlined),
                  onPressed: () {
                    setState(() {
                      _myPage.jumpToPage(2);
                    });
                  }),
              IconButton(
                  icon: Icon(Icons.restaurant_outlined),
                  onPressed: () {
                    setState(() {
                      _myPage.jumpToPage(3);
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
