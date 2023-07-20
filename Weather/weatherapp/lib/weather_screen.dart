import "dart:ui";

import "package:flutter/material.dart";
import "package:weatherapp/additional_info_item.dart";
import "package:weatherapp/hourly_forecast_item.dart";

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            "300k",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Icon(
                            Icons.cloud,
                            size: 60,
                          ),
                          Text(
                            "Rain",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              "Weather Forecast",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastItem(
                    time: "00:00",
                    icon: Icons.cloud,
                    temperature: "301.22",
                  ),
                  HourlyForecastItem(
                    time: "03:00",
                    icon: Icons.sunny,
                    temperature: "300.52",
                  ),
                  HourlyForecastItem(
                    time: "05:00",
                    icon: Icons.cloud,
                    temperature: "315.22",
                  ),
                  HourlyForecastItem(
                    time: "07:00",
                    icon: Icons.cloud,
                    temperature: "250.20",
                  ),
                  HourlyForecastItem(
                    time: "09:00",
                    icon: Icons.cloud,
                    temperature: "275.22",
                  ),
                  // HourlyForecastItem(),
                  // HourlyForecastItem(),
                  // HourlyForecastItem(),
                  // HourlyForecastItem(),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Additional  Information",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInfoItem(
                  icon: Icons.water_drop,
                  label: "Humadity",
                  value: "91",
                ),
                AdditionalInfoItem(
                  icon: Icons.air,
                  label: "Wind Spedd",
                  value: "7.5",
                ),
                AdditionalInfoItem(
                  icon: Icons.beach_access,
                  label: "Pressure",
                  value: "1000",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class AdditionalInfoITEM extends StatelessWidget {
//   const AdditionalInfoITEM({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       children: [
//         Icon(
//           Icons.water_drop,
//           size: 32,
//         ),
//         SizedBox(
//           height: 8,
//         ),
//         Text("Humidity"),
//         SizedBox(
//           height: 8,
//         ),
//         Text(
//           "91",
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class HourlyForecastItem extends StatelessWidget {
//   const HourlyForecastItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 6,
//       child: Container(
//         width: 100,
//         padding: const EdgeInsets.all(8.0),
//         decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
//         child: const Column(
//           children: [
//             Text(
//               "03:00",
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 8),
//             Icon(
//               Icons.cloud,
//               size: 25,
//             ),
//             SizedBox(height: 8),
//             Text("320.12"),
//           ],
//         ),
//       ),
//     );
//   }
// }
