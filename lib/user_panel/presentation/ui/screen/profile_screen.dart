import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: profile_appbar_section,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'My  Profile',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    child: CircleAvatar(
                      maxRadius: 70,
                      child: Icon(
                        Icons.person,
                        size: 100,
                      ),
                      // backgroundImage: AssetImage(AppImage.profileImage),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Login to see your info',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text('Change Language',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.contact_page),
                title: Text('Contact Us',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.contact_page),
                title: Text('About Us',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.contact_page),
                title: Text('Cookies Policy',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    ));
  }
}

