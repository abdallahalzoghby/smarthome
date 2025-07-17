import 'package:flutter/material.dart';

class RegionScreen extends StatefulWidget {
  @override
  _RegionScreenState createState() => _RegionScreenState();
}

class _RegionScreenState extends State<RegionScreen> {
  String _selectedRegion = 'Egypt'; // Default region
  final List<String> _regions = [
    'USA',
    'UK',
    'Canada',
    'Australia',
    'New Zealand',
    'Egypt',
    'Saudi Arabia',
    'UAE',
    'Iraq',
    'Jordan',
    'China',
    'Japan',
    'South Korea',
    'Vietnam',
    'Thailand',
    'Turkey',
    'Iran',
    'Ethiopia',
    'Kenya',
    'South Africa',
    'Nigeria',
    'Ghana',
    'Ivory Coast',
    'Morocco',
    'Somalia',
    'Zimbabwe',
    'Tanzania',
    'India',
    'Bangladesh',
    'Pakistan',
    'Nepal',
    'Sri Lanka',
    'France',
    'Germany',
    'Italy',
    'Spain',
    'Portugal',
    'Netherlands',
    'Belgium',
    'Sweden',
    'Denmark',
    'Norway',
    'Finland',
    'Greece',
    'Poland',
    'Czech Republic',
    'Hungary',
    'Switzerland',
    'Austria',
    'Ireland',
    'Scotland',
    'Wales',
    'Romania',
    'Bulgaria',
    'Serbia',
    'Croatia',
    'Slovakia',
    'Slovenia',
    'Ukraine',
    'Belarus',
    'Armenia',
    'Georgia',
    'Albania',
    'Moldova',
    'Iceland',
    'Malta',
    'Brazil',
    'Argentina',
    'Mexico',
    'Chile',
    'Peru',
    'Colombia',
    'Venezuela',
    'Ecuador',
    'Bolivia',
    'Paraguay',
    'Uruguay',
    'Honduras',
    'Guatemala',
    'Cuba',
    'Haiti',
    'Dominican Republic',
    'Panama',
    'Costa Rica',
    'El Salvador',
    'Nicaragua',
    'Fiji',
    'Samoa',
    'Tonga',
    'Vanuatu',
    'Papua New Guinea',
    'Guam',
    'Northern Mariana Islands',
    'French Polynesia',
    'Israel',
    'Lebanon',
    'Indonesia',
    'Philippines',
    'Malaysia',
    'Singapore'
  ];

  List<String> _filteredRegions = []; // Filtered region list

  @override
  void initState() {
    super.initState();
    _filteredRegions = _regions; // Initially all regions are shown
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
        backgroundColor: Colors.blue.shade800, // Darker blue for the app bar
        centerTitle: true,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white, // Title text color
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade900, // Top color
              Colors.blue.shade700, // Bottom color
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 30,
                ),
                title: Text(
                  'Region',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 24,
                ),
                onTap: () {
                  // Handle Region tap
                },
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (value) {
                  setState(() {
                    _filteredRegions = _regions.where((region) =>
                        region.toLowerCase().contains(value.toLowerCase())
                    ).toList();
                  });
                },
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: ListView.builder(
                  itemCount: _filteredRegions.length,
                  itemBuilder: (context, index) {
                    final region = _filteredRegions[index];
                    return ListTile(
                      title: Text(
                        region,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      trailing: _selectedRegion == region
                          ? Icon(
                        Icons.check_circle,
                        color: Colors.amber,
                      )
                          : null,
                      onTap: () {
                        setState(() {
                          _selectedRegion = region;
                        });
                        // Handle the region change (e.g., update app settings)
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}