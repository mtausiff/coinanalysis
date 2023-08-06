import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coin Analysis',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Crypto Coin Analysis'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var coinList = ['CoinA','CoinB','CoinC','CoinD','CoinE','CoinF','CoinG','CoinB','CoinC','CoinD','CoinF','CoinG','CoinF','CoinR','CoinA','CoinB','CoinC','CoinD','CoinE','CoinF','CoinG','CoinB','CoinC','CoinD','CoinF','CoinG','CoinF','CoinR'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      /*body: ListView.builder(itemBuilder: (context, index){
        return Text(coinList[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),);
      },
      itemCount: coinList.length,
      ),*/
      body: ListView.separated(itemBuilder: (context, index){
          return ListTile(
            //leading: Text('${index+1}', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
            leading: CircleAvatar(
              //backgroundColor: Colors.lightGreen,
              backgroundImage: AssetImage('assets/app_logo.png'),
              maxRadius: 28,
            ),
            title: Text(coinList[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
            subtitle: Text('subtitle'),
            trailing: Icon(Icons.menu),
          );
        },
        itemCount: coinList.length,
        separatorBuilder: (context, index){
          return Divider(height: 30, thickness: 2,);
        },
      ),
    );
  }
}
