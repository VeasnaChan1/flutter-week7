import 'package:flutter/material.dart';

enum Device {
  lamp(name: "Lamp", icon: Icons.lightbulb, room: "Bedroom"),
  tv(name: "TV", icon: Icons.tv, room: "Living room"),
  fan(name: "Fan", icon: Icons.air, room: "Office"),
  speaker(name: "Speaker", icon: Icons.speaker, room: "Kitchen"),
  heater(name: "Heater", icon: Icons.local_fire_department, room: "Bathroom"),
  camera(name: "Camera", icon: Icons.videocam, room: "Garage");

  const Device({required this.name, required this.icon, required this.room});

  final String name;
  final IconData icon;
  final String room;
}

//
//  Create your stateless widget DeviceCard here
class DeviceCard extends StatelessWidget {
  final String cardName;
  final IconData cardIcon;
  final String cardRoom;
  final bool isOn;

  const DeviceCard({
    super.key,
    required this.cardName,
    required this.cardIcon,
    required this.cardRoom,
    this.isOn = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 210, 210, 210),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: isOn ? Colors.amber : Colors.grey,
              child: Icon(cardIcon, color: Colors.white),
            ),
          ),
          Text(cardName),
          Padding(padding: const EdgeInsets.all(8.0), child: Text("-")),
          Text(cardRoom),
        ],
      ),
    );
  }
}
//
//

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(
            "EX-2 - Stateless Widgets",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              DeviceCard(
                cardIcon: Device.lamp.icon,
                cardName: Device.lamp.name,
                cardRoom: Device.lamp.room,
              ),
              SizedBox(height: 20),
              DeviceCard(
                cardIcon: Device.tv.icon,
                cardName: Device.tv.name,
                cardRoom: Device.tv.room,
                isOn: true,
              ),
              SizedBox(height: 20),
              DeviceCard(
                cardIcon: Device.fan.icon,
                cardName: Device.fan.name,
                cardRoom: Device.fan.room,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
