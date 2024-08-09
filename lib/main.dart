import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});
  List<String> friendList = [
    'Fahad',
    'Imran',
    'touhid',
    'sakib',
    'payel',
    'mishu',
    'hemal'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: ListView.separated(
          itemCount:friendList.length,

          itemBuilder: (context, index) {
    return ListTile(

      title: Text(friendList[index]),
      subtitle: Text('School friend'),
      leading: Text((index+1).toString()),
      trailing: Icon(Icons.add),
            titleTextStyle: TextStyle(
            fontSize: 18,
            color: Colors.blue,)
    );
    },
    separatorBuilder: (context,index){
           return Divider(
height: 40,
             color: Colors.grey.shade200,
             endIndent: 16,
             thickness: 2,
             indent: 4,

           );

          }),
    );
  }
}
