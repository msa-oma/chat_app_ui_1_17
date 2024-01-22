import 'package:chat_app_ui_1_17/colors.dart';
import 'package:chat_app_ui_1_17/login_view.dart';
import 'package:chat_app_ui_1_17/user_model.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  ChatView({super.key});

  final List<UserModel> users = [
    UserModel(
        firstName: 'msa',
        lastName: 'hms',
        image: 'assets/person.png',
        lastMsg: 'hello,are you ok?'),
    UserModel(
        firstName: 'asa',
        lastName: 'hms',
        image: 'assets/person2.png',
        lastMsg: 'hi,where r u?'),
    UserModel(
        firstName: 'hsa',
        lastName: 'hms',
        image: 'assets/person3.png',
        lastMsg: 'hello,give me a call'),
    UserModel(
        firstName: 'nsa',
        lastName: 'hms',
        image: 'assets/person.png',
        lastMsg: 'hi u, gd morning '),
    UserModel(
        firstName: 'nrsa',
        lastName: 'hms',
        image: 'assets/person5.png',
        lastMsg: 'hello,how r u?'),
    UserModel(
        firstName: 'msa',
        lastName: 'hms',
        image: 'assets/person6.png',
        lastMsg: 'hello,are you ok?'),
    UserModel(
        firstName: 'asa',
        lastName: 'hms',
        image: 'assets/person.png',
        lastMsg: 'hi,where r u?'),
    UserModel(
        firstName: 'hsa',
        lastName: 'hms',
        image: 'assets/person2.png',
        lastMsg: 'hello,give me a call'),
    UserModel(
        firstName: 'nsa',
        lastName: 'hms',
        image: 'assets/person3.png',
        lastMsg: 'hi u, gd morning '),
    UserModel(
        firstName: 'nrsa',
        lastName: 'hms',
        image: 'assets/person5.png',
        lastMsg: 'hello,how r u?'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBlue,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.mainBlue,
        title: const Text(
          'Chats ',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              'Favorite Contacts',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: SizedBox(
              height: 120,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: ClipOval(
                              child: Image.asset(
                                users[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: 9,
                              backgroundColor: AppColors.moreLightGray,
                              child: CircleAvatar(
                                  radius: 7, backgroundColor: Colors.green),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          users[index].firstName,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 12,
                  );
                },
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50))),
            child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      ClipOval(
                        child: CircleAvatar(
                          backgroundColor: AppColors.lighterGray,
                          radius: 30,
                          child: Image.asset(users[index].image),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${users[index].firstName} ${users[index].lastName}',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              users[index].lastMsg,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Text('10:10 pm')
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 12,
                  );
                },
                itemCount: users.length),
          ))
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return const LoginView();
            },
          ));
        },
        backgroundColor: AppColors.mainBlue,
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
