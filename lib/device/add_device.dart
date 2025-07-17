import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class AddDeviceScreen extends StatefulWidget {
  @override
  _AddDeviceScreenState createState() => _AddDeviceScreenState();
}

class _AddDeviceScreenState extends State<AddDeviceScreen> {
  bool _isBluetoothOn = false;
  bool _isVoiceAssistantOn = false;

  @override
  void initState() {
    super.initState();
    _checkBluetoothStatus();
  }

  Future<void> _checkBluetoothStatus() async {

    await Future.delayed(Duration(seconds: 1)); // Delay for simulation
    setState(() {
      _isBluetoothOn = true;
    });
  }

  Future<void> _turnOnBluetooth() async {
    if (await Permission.bluetooth.request().isGranted) {
      // Simulate Bluetooth turning on
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        _isBluetoothOn = true;
      });
    } else {
      // Handle case where permission is not granted
    }
  }

  Future<void> _startScanning() async {
    if (await Permission.bluetooth.request().isGranted) {
      // Simulate scanning
      await Future.delayed(Duration(seconds: 2));
      setState(() {}); // Update the UI to show devices (simulated)
    } else {
      // Handle case where permission is not granted
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Device'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
        backgroundColor: Colors.blue.shade800,
        centerTitle: true,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade900,
              Colors.blue.shade700,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Add Device',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30.0),
              // Add Device Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: _turnOnBluetooth,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade200,
                      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 15.0),
                      textStyle: TextStyle(fontSize: 18.0, color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text('Turn on Bluetooth'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle "Add Manually" button press
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade200,
                      padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 15.0),
                      textStyle: TextStyle(fontSize: 18.0, color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text('Add Manually'),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: _startScanning,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade200,
                  padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
                  textStyle: TextStyle(fontSize: 18.0, color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('Searching for nearby devices'),
              ),
              SizedBox(height: 40.0),
              Text(
                'Voice Assistance',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isVoiceAssistantOn = !_isVoiceAssistantOn;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade200,
                  padding: EdgeInsets.symmetric(horizontal: 88.0, vertical: 15.0),
                  textStyle: TextStyle(fontSize: 18.0, color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('Use Voice to Connect'),
              ),
              SizedBox(height: 20.0),
              Icon(
                _isVoiceAssistantOn ? Icons.mic_none : Icons.mic,
                size: 50.0,
                color: Colors.white,
              ),
              SizedBox(height: 40.0),

              // Grid View for Device Controls (replace with your actual devices)
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: List.generate(6, (index) {
                    return DeviceControlCard(
                      deviceName: getDeviceName(index),
                      deviceIcon: getDeviceIcon(index),
                      // Add the necessary logic for device control
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper functions for device names and icons
  String getDeviceName(int index) {
    switch (index) {
      case 0:
        return 'Front door lock\nLocked';
      case 1:
        return 'Ceiling light\nLiving room';
      case 2:
        return 'Kettle\nKitchen';
      case 3:
        return 'Table lamp\nLiving room';
      case 4:
        return 'AC\nLiving room';
      case 5:
        return 'Security camera\nLiving room';
      default:
        return 'Unknown Device';
    }
  }

  IconData getDeviceIcon(int index) {
    switch (index) {
      case 0:
        return Icons.lock;
      case 1:
        return Icons.lightbulb;
      case 2:
        return Icons.local_cafe;
      case 3:
        return Icons.lightbulb;
      case 4:
        return Icons.ac_unit;
      case 5:
        return Icons.security;
      default:
        return Icons.error;
    }
  }
}

// Custom Card for Device Controls
class DeviceControlCard extends StatelessWidget {
  final String deviceName;
  final IconData deviceIcon;

  DeviceControlCard({required this.deviceName, required this.deviceIcon});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.shade900,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            deviceIcon,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(height: 10),
          Text(
            deviceName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          // Add a Switch or other control for the device
          Switch(
            value: false,
            activeColor: Colors.amber,
            onChanged: (value) {
              // Implement the device control logic here
            },
          ),
        ],
      ),
    );
  }
}