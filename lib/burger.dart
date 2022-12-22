import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyBurger extends StatefulWidget {
  const MyBurger({super.key});
  @override
  State<MyBurger> createState() => _MyBurgerState();
}

class _MyBurgerState extends State<MyBurger> {
  var _isVisible = false;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Container(
          height: deviceHeight * 0.35,
          child: const FittedBox(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/burger.jpeg'),
              radius: 100,
            ),
          ),
        ),
        Container(
          height: deviceHeight * 0.65,
          width: double.infinity,
          color: Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: LayoutBuilder(builder: (ctx, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Login Now',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.01,
                ),
                const Text('Please enter the details below to continue'),
                SizedBox(
                  height: constraints.maxHeight * 0.08,
                ),
                Container(
                  height: constraints.maxHeight * 0.12,
                  decoration: BoxDecoration(
                      color: Color(0xffB4B4B4).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Center(
                        child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'sumi@gmail.com'),
                    )),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.04,
                ),
                Container(
                  height: constraints.maxHeight * 0.12,
                  decoration: BoxDecoration(
                      color: Color(0xffB4B4B4).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Center(
                        child: TextField(
                      obscureText: _isVisible ? false : true,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            icon: Icon(
                              _isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                          ),
                          border: InputBorder.none,
                          hintText: 'Password'),
                    )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: (() {}),
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(color: Color(0xffF80848)),
                        ))
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: constraints.maxHeight * 0.12,
                  margin: EdgeInsets.only(top: constraints.maxHeight * 0.05),
                  child: ElevatedButton(
                    onPressed: (() {}),
                    child: Text(
                      'Log In',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffF80849),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
                RichText(
                    text: TextSpan(
                        text: 'Don\'t have an Account',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        children: [
                      TextSpan(
                          text: 'Register',
                          style:
                              TextStyle(color: Color(0xffF80849), fontSize: 18),
                          recognizer: TapGestureRecognizer()..onTap = (() {}))
                    ]))
              ],
            );
          }),
        ),
      ])),
    );
  }
}
