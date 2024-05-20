import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({
    super.key,
    required String title,
  }) : _title = title;

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        //automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          const SizedBox(
            //Used to center the content on the screen
            height: 50,
          ),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Log in!',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              )),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(5),
            child: const Text(
              'Please sign in to continue our app',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(114, 114, 114, 1.0),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
                filled: true,
                fillColor: Color.fromRGBO(227, 227, 227, 0.5),

                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                //labelText: 'User Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
                filled: true,
                fillColor: Color.fromRGBO(227, 227, 227, 0.5),

                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                //labelText: 'User Name',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text(
                  'Forgot Password? (Optional)',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: Colors.blueAccent,
              ),
              child: const Text(
                'Log in',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              onPressed: () {
                print(emailController.text);
                print(passwordController.text);
              },
            ),
          ),
          const SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            const Text(
              'Don\'t have an account?',
              // style: TextStyle(
              //   fontSize: 14,
              // ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: const Text(
                'Sign up',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 18,
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
