import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoinListingScreen extends StatelessWidget {

  var coinList = ['CoinA','CoinB','CoinC','CoinD','CoinE','CoinF',
                  'CoinG','CoinB','CoinC','CoinD','CoinF','CoinG','CoinF','CoinR',
                  'CoinA','CoinB','CoinC','CoinD','CoinE','CoinF','CoinG','CoinB',
                  'CoinC','CoinD','CoinF','CoinG','CoinF','CoinR'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Crypto Coin Analysis'),
      ),
      //simply listview display using -  ListView.builder
      /*body: ListView.builder(itemBuilder: (context, index){
        return Text(coinList[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),);
      },
      itemCount: coinList.length,
      ),*/
      //advanced listview display using -  ListView.separated
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