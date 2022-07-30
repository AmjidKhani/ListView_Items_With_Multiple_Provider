import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled6/listprovider.dart';

class listingitems extends StatefulWidget {
  const listingitems({Key? key}) : super(key: key);

  @override
  State<listingitems> createState() => _listingitemsState();
}

class _listingitemsState extends State<listingitems> {


  @override
  Widget build(BuildContext context) {
    print("itembuil");
    final listitems = Provider.of<listprovider>(context,listen: false);
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: ListView.builder(
              itemCount: 2000,
              itemBuilder: (context, index)
              {
               return Consumer<listprovider>(
                  builder: (context, value, child) {
                    return ListTile(
                      onTap: () {
                        value.addItem(index);
                        },
                      title: Text('items $index'),
                      trailing: Icon(
                          value.fav.contains(index)
                          ? Icons.favorite
                          : Icons.favorite_border),
                    );
                  }

                );
              }
  ),
        ),
      ]),
    );
  }
}
