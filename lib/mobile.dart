
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive/adaptive.dart';
import 'package:responsive_adaptive/component.dart';

class mobile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              width: double.infinity,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Login into your account' , style: TextStyle(fontSize: 50),),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      label: Text('Email'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      label: Text('Password'),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(onPressed: (){},
                          color: Colors.blue,
                          child: Text('Login'),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: MaterialButton(onPressed: (){},
                          color: Colors.teal,
                          child: Text('Register'),
                        ),
                      ),
                    ],
                  ),
                  Adaptive(os: getOs()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
