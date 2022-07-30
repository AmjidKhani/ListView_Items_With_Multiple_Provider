import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled6/econdeproviderscreen.dart';
import 'package:untitled6/provideree.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);
  @override
  State<homepage> createState() => _homepageState();
}
class _homepageState extends State<homepage> {
  double values=1.0;
  @override
  Widget build(BuildContext context) {
    print("hello");
    final datachange=Provider.of<providerrr>(context,listen: false);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Consumer<providerrr>(
                builder: (context,value,child)
            {
return (Slider(

    max: 1,
    min: 0,
    value: value.valuetake,
    onChanged: (val){
print("build count");
      value.getvalue(val);
    }
)
);
            }
            ),
          ),
          Consumer<providerrr>(
              builder: (context,value,child){
                return  Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        color: Colors.orange.withOpacity(value.valuetake),
                        child: Center(child: Text("Containeir 1")),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 200,
                        color: Colors.black.withOpacity(value.valuetake),
                        child: Center(child: Text("Containeir 2",style: TextStyle(color: Colors.white),)),
                      ),
                    ),
                  ],
                );
              }
          ),

        ],
      ),
    );
  }
}
