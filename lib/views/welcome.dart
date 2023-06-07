import 'package:flix_cine/views/create_account.dart';
import 'package:flix_cine/views/home.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/img/img-01.jpg', fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(103, 0, 0, 0)
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
           Align(
            alignment: Alignment.topCenter,
             child: Container(
                margin: const EdgeInsets.only(top: 75.0),
                width: 120.0,
                height: 120.0,
                child: Image.asset(
                  'assets/img/rocket.png', fit: BoxFit.cover,
                ),
              ),
           ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 400.0,
              height: 430.0,
              decoration: const BoxDecoration(
                color: Color.fromARGB(232, 255, 255, 255),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text('Login', style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w800
                      ),
                    ),
                  ),

                  Form(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.white
                        ),
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Name or E-mail',
                          hintStyle: const TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.842),
                            fontWeight: FontWeight.w400,
                          ),
                          filled: true,
                          fillColor: Colors.black,
                        ),
                      ),
                    ),
                  ),

                  Form(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.white
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.842),
                            fontWeight: FontWeight.w400,
                          ),
                          filled: true,
                          fillColor: Colors.black,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 45.0, bottom: 15.0),
                    width: 100.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.black,
                    ),
                    child: IconButton(onPressed: () {
                      Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                      ),
                    );
                    }, icon: const Icon(Icons.check, color: Colors.white,),
                    ),
                  ),

                  TextButton(onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => const CreateAccount(),
                      ),
                    );
                  }, child: const Text('Create an account'),
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}