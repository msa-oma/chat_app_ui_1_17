import 'package:chat_app_ui_1_17/chat_view.dart';
import 'package:chat_app_ui_1_17/colors.dart';
import 'package:chat_app_ui_1_17/register_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isNotVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  radius: 75,
                  foregroundImage: AssetImage('assets/chatlogo.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Login to your account',
                  style: TextStyle(
                      fontSize: 18,
                      color: AppColors.mainBlue,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    label: Text('Email'),
                    hintText: 'email',
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: AppColors.mainBlue),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mainBlue),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: isNotVisible,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    label: const Text('password'),
                    hintText: 'passowrd',
                    suffixIcon: IconButton(
                      icon: isNotVisible
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.remove_red_eye),
                      onPressed: () {
                        setState(() {
                          isNotVisible = !isNotVisible;
                        });
                      },
                    ),
                    //
                    prefixIcon: const Icon(Icons.lock),
                    errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: AppColors.mainBlue),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mainBlue),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //Login Btn
                SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return ChatView();
                          },
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: AppColors.mainBlue),
                      child: const Center(
                        child: Text(
                          'LOG  IN',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'if u haven\'t account',
                      style: TextStyle(fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const RegisterView();
                          },
                        ));
                      },
                      child: const Text(
                        'create One',
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColors.mainBlue,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
