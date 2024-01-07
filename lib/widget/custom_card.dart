import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String gender;
  final String location;
  final String email;
  const CustomCard({
    super.key,
    required this.email,
    required this.gender,
    required this.imageUrl,
    required this.location,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      color: Colors.white, 
      elevation: 4.0, 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(
          color: Colors.grey.shade300, 
          width: 1.0,
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue, 
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19.0,
            color: Colors.black, 
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8.0),
            Row(
              children: [
                const Icon(
                  Icons.person,
                  size: 18.0,
                  color: Color(0xFF204080),
                ),
                const SizedBox(width: 8.0),
                Text(
                  gender,
                  style: const TextStyle(
                    fontSize: 17.0,
                    color: Colors.black87, 
                  ),
                ),
                const SizedBox(width: 30.0),
                const Icon(
                  Icons.location_on,
                  size: 18.0,
                  color: Colors.red,
                ),
                const SizedBox(width: 8.0),
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 17.0,
                    color: Colors.black87, 
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(
              email,
              style: const TextStyle(
                fontSize: 17.0,
                color: Colors.blue,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
