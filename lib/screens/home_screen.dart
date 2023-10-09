import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Screen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Selamat datang di Home Screen!',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Text(
//               'Selamat datang di Home Screen!',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Tambahkan tindakan yang ingin Anda lakukan saat tombol ditekan di sini
//                 // Contoh: Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen()));
//               },
//               child: Text('Pergi ke Halaman Lain'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Screen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.home,
//               size: 100,
//               color: Colors.blue,
//             ),
//             Text(
//               'Selamat Datang ',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String userWelcome = 'Selamat Datang ! ';
    String userName = 'Andi';
    String userAvatarUrl =
        'https://static.vecteezy.com/system/resources/previews/000/420/940/original/avatar-icon-vector-illustration.jpg';

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage:
                  NetworkImage(userAvatarUrl), // Gambar profil pengguna
            ),
            SizedBox(height: 20),
            Text(
              userWelcome,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              userName,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
