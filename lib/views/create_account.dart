import 'package:flutter/material.dart';

import 'home.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
    body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:8.0, right:8.0,top: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Create your account here!', 
                    style: TextStyle(
                        color: Color.fromARGB(255, 161, 130, 247),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12.0),
              ),
              width: 320.0,
              height: 150.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset('assets/img/banner_rocket.jpg',
                 fit: BoxFit.cover,),
              ),
            ),
          ),

          Form(child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              autocorrect: true,
              style: const TextStyle(
                color: Colors.white,
              ),
              keyboardType: TextInputType.name,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                filled: true,
                fillColor: Colors.black,
                hintText: 'Name',
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ),
            Form(child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              autocorrect: true,
              style: const TextStyle(
                color: Colors.white,
              ),
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                filled: true,
                fillColor: Colors.black,
                hintText: 'E-mail',
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ),
          Form(child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              autocorrect: true,
              style: const TextStyle(
                color: Colors.white,
              ),
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                filled: true,
                fillColor: Colors.black,
                hintText: 'E-mail confirmation',
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ),
          Form(child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              style: const TextStyle(
                color: Colors.white,
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                filled: true,
                fillColor: Colors.black,
                hintText: 'Password',
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ),
          Form(child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              style: const TextStyle(
                color: Colors.white,
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                filled: true,
                fillColor: Colors.black,
                hintText: 'Password Confirmation',
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ),

          Container(
            margin: const EdgeInsets.all(25.0),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: TextButton.icon(onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(
                builder: (context) => const Home(),
                  ),
                );
            }, icon: const Icon(Icons.rocket, 
            color: Color.fromARGB(255, 161, 130, 247),), 
            label: const Text("Let's Go!", 
            style: TextStyle(
              color: Color.fromARGB(255, 161, 130, 247),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }
}