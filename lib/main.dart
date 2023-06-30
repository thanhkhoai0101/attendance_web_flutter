import 'package:attendance_web_flutter/page/dashboard/chart/bar_chart.dart';
import 'package:attendance_web_flutter/page/dashboard/chart/line_chart.dart';
import 'package:attendance_web_flutter/page/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minimal Html Editor',
      home: MyHomePage(title: 'ahihi',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        body: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(18, 25, 39, 1),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    child: TabBar(
                      tabs: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.logo_dev,
                              size: 40,
                            ),
                            Text('Attendance'),
                          ],
                        ),
                        Text("Manage Attendance"),
                        Text("Student's List"),
                        Text("Report"),
                      ],
                    ),
                  ),
                ),
                Expanded(child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('ahihi'),
                    Row(
                      children: [
                        const CircleAvatar(
                          child: Text('K'),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Text('Name'),
                                Icon(Icons.arrow_drop_down)
                              ],
                            ))
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
          body: Column(children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color:  Color.fromRGBO(18, 25, 39, 1),
              ),
              child: const Text('ahihi')
            ),
            Expanded(child:  TabBarView(
              children: [
                SingleChildScrollView(
                  controller: _scrollController,
                  child: DashBoard(),
                ),
                SingleChildScrollView(
                    child: Column(
                      children: [Text('data')],
                    )),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Fixed height and scrollable",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Fixed height and scrollable",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Fixed height and scrollable",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),)
          ],)
        ),
      ),
    );
  }
}
