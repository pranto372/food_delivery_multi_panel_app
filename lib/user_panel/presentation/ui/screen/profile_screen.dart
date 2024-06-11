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
                Container(
                  height: 300,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ListTile(
                              leading: Icon(
                                Icons.language,
                                color: Colors.grey.shade500,
                                size: 20,
                              ),
                              title: Text(
                                'Change Language',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            Divider(
                              thickness: 0.5,
                            )
                          ],
                        );
                      }),
                ),

                // ListTile(
                //   leading: Icon(Icons.language),
                //   trailing: Text('Change Language'),
                // ),
                // Divider(),
                // ListTile(
                //   leading: Icon(Icons.contact_page),
                //   trailing: Text('Contact Us'),
                // ),
                // Divider(),
                // ListTile(
                //   leading: Icon(Icons.contact_page),
                //   trailing: Text('About Us'),
                // ),
                // Divider(),
                // ListTile(
                //   leading: Icon(Icons.contact_page),
                //   trailing: Text('Cookies Policy'),
                // ),
                // Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }

//   AppBar get profile_appbar_section {
//     return AppBar(
//       automaticallyImplyLeading: false,
//       title: Text(
//         'My  Profile',
//         style: Theme.of(context)
//             .textTheme
//             .titleMedium!
//             .copyWith(color: Colors.black, fontSize: 18),
//       ),
//     );
//   }
}
