import 'package:flutter/material.dart';
import 'package:work_sync/model/user.dart';
import 'package:work_sync/services/user_api.dart';
import 'package:work_sync/widget/custom_card.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<User>> _fetchUsers;

  @override
  void initState() {
    super.initState();

    _fetchUsers = UserApi.fetchUsers().catchError((error) {
      //print('Error occurred: $error');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('An error occurred: $error'),
          duration: const Duration(seconds: 3),
        ),
      );
      return Future<List<User>>.value([]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF2D4990),
        elevation: 0,
        title: const Text(
          'WorkSync',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: FutureBuilder<List<User>>(
        future: _fetchUsers,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Error fetching data'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No data available'),
            );
          } else {
            List<User> users = snapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                final email = user.email;
                final image = user.image.mediumimg;
                final gender = user.gender;
                final name = user.fullName;
                final location = user.location.country;
                return CustomCard(
                  email: email,
                  gender: gender,
                  imageUrl: image,
                  title: name,
                  location: location,
                );
              },
            );
          }
        },
      ),
    );
  }
}
