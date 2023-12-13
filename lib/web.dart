
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class web extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Text('Web'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Expanded(
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
