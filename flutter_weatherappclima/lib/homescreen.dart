// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

//   class  HomeScreen extends StatefulWidget {
//     @override
//     _YourWidgetName createState() => _YourWidgetName();
//   }
//   class _YourWidgetName extends State< HomeScreen> {
//     @override
//     Widget build(BuildContext context) {
//     return Container();
//   }

//   getCurrentLocation() async {
//     var p = await Geolocator.getCurrentPosition(
//     desiredAccuracy: LocationAccuracy.low,
//     forceAndroidLocationManager: true,
//   );
//     if (p != null) {
//     print('Lat:${p.latitude}, Long:${p.longitude}');
  
//   } else {
//     print('Data unavailable');
//   }
//  }
// }

// Step 1
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getCurrentLocation();
//   }

//   Future<void> getCurrentLocation() async {
//     try {
//       var position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.low,
//         forceAndroidLocationManager: true,
//       );
//       print('Lat: ${position.latitude}, Long: ${position.longitude}');
//         } catch (e) {
//       print('Error: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const SafeArea(
//       child: Scaffold(
//       )
//     );
//   }
// }

// STEP 3: Getting weather data of Current location
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'constants.dart' as k;
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  Future<void> getCurrentLocation() async {
    try {
      var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
        forceAndroidLocationManager: true,
      );
      if (position != null) {
        print('Lat: ${position.latitude}, Long: ${position.longitude}');
        fetchWeather(position.latitude, position.longitude);
      } else {
        print('Data unavailable');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

Future<void> fetchWeather(double lat, double lon) async {
  final String url =
      '${k.domain}lat=$lat&lon=$lon&appid=${k.apiKey}&units=metric';

  try {
    final http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);

      // Menampilkan data JSON lengkap di konsol
      print(jsonEncode(data)); // Untuk melihat JSON lengkap
    } else {
      print('Error: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Weather App'),
        ),
        body: Center(
          child: Text('Mengambil Cuaca...'),
        ),
      ),
    );
  }
}

// // API call by latitude longitude format
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:http/http.dart' as http;
// import 'constants.dart' as k;
// import 'dart:convert';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   void initState() {
//     super.initState();
//     getCurrentLocation();
//   }

//   getCurrentLocation() async {
//     try {
//       var position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.low,
//         forceAndroidLocationManager: true,
//       );
//       if (position != null) {
//         print('Lat: ${position.latitude}, Long: ${position.longitude}');
//         fetchWeather(position.latitude, position.longitude);
//       } else {
//         print('Data unavailable');
//       }
//     } catch (e) {
//       print('Error: $e');
//     }
//   }

//   Future<void> fetchWeather(double lat, double lon) async {
//     final url = '${k.domain}lat=$lat&lon=$lon&appid=${k.apiKey}&units=metric';
//     try {
//       final response = await http.get(Uri.parse(url));
//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         // Menampilkan data JSON lengkap di konsol
//         print(jsonEncode(data)); // Untuk melihat JSON 
//       } else {
//         print('Error: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error: $e');
//     } 
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Weather App'),
//         ),
//         body: Center(
//           child: Text('Mengambil Cuaca...'),
//         ),
//       ),
//     );
//   }
// }

// Step 4 
// API call by city name format
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'constants.dart'; // Import file constants.dart
// import 'dart:convert';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   String weatherInfo = "Mengambil data cuaca...";

//   Future<void> getCityWeather() async {
//     final url = Uri.parse(weatherUrl); // Mengambil URL dari constants.dart
//     try {
//       final response = await http.get(url);
//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         print(jsonEncode(data)); // Menampilkan data JSON lengkap di konsol
//       } else {
        
//         print('Error: ${response.statusCode}');
//       }
//     } catch (e) {
//       setState(() {
//         weatherInfo = "Error: $e";
//       });
//       print('Error: $e');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     getCityWeather(); // Panggil fungsi untuk mendapatkan data cuaca
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Weather App'),
//         ),
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               weatherInfo,
//               style: TextStyle(fontSize: 18),
//               textAlign: TextAlign.center,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }