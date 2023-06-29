import 'package:coriander/next_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => 'Item $i');
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false, 
          leading: const Icon(Icons.videocam),
          title: const Text(
            'sayonara app',
            ),
            actions: [
              SizedBox(
                width: 60,
                height: 60,
                child: ElevatedButton(
                  onPressed: () { },
                  child: const Icon(Icons.search),
                ),
              ),
              SizedBox(
                width: 44,
                child: ElevatedButton(
                  onPressed: () { },
                  child: const Icon(Icons.more_vert),
                ),
              ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                        'https://static.tenki.jp/images/icon/forecast-days-weather/15.png'
                      ),
                    ),
                    const SizedBox(width: 8,),
                  Column(
                    children: [
                      const Text(
                        'hello'
                      ),
                      ElevatedButton(
                        child: Row(
                          children: [
                            const Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            const Text(
                              'register'
                            ),
                          ],
                        ),
                        onPressed: () { },
                      ),
                    ],
                  ),
                ],
                ),
              ),
              Expanded(
                child: ListView.builder( 
                itemCount: items.length,
                prototypeItem: ListTile(
                  title: Text(items.first),
                ),
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.all(8),
                    leading: Image.network(
                        'https://static.tenki.jp/images/icon/forecast-days-weather/15.png'
                      ),
                    title: Text('goodbye'),
                    trailing: Icon(Icons.),
                  );
                },
              )
              ),
            ],
          ),
        ), 
      ),     
    );
  }
}

