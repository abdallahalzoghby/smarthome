import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String _selectedLanguage = 'English';
  final List<String> _allLanguages = [
    'English',
    'Arabic',
    'Spanish',
    'French',
    'German',
    'Italian',
    'Portuguese',
    'Russian',
    'Chinese',
    'Japanese',
    'Hindi',
    'Bengali',
    'Korean',
    'Vietnamese',
    'Thai',
    'Turkish',
    'Persian',
    'Swahili',
    'Amharic',
    'Zulu',
    'Hausa',
    'Yoruba',
    'Igbo',
    'Berber',
    'Somali',
    'Shona',
    'Oromo',
    'Greek',
    'Dutch',
    'Polish',
    'Czech',
    'Hungarian',
    'Swedish',
    'Danish',
    'Norwegian',
    'Finnish',
    'Hebrew',
    'Yiddish',
    'Latin',
    'Sanskrit',
    'Tamil',
    'Telugu',
    'Kannada',
    'Malayalam',
    'Marathi',
    'Punjabi',
    'Urdu',
    'Pashto',
    'Kurdish',
    'Uyghur',
    'Burmese',
    'Khmer',
    'Lao',
    'Armenian',
    'Georgian',
    'Albanian',
    'Maltese',
    'Icelandic',
    'Irish',
    'Scottish Gaelic',
    'Welsh',
    'Breton',
    'Basque',
    'Catalan',
    'Galician',
    'Corsican',
    'Sardinian',
    'Frisian',
    'Quechua',
    'Guarani',
    'Nahuatl',
    'Mapudungun',
    'Aymara',
    'Mayan languages',
    'Hawaiian',
    'Maori',
    'Samoan',
    'Tongan',
    'Fijian',
    'Tok Pisin',
    'Hiri Motu',
    'Chamorro',
    'Tahitian',
    'Bislama',
    'Esperanto',
    'Klingon',
    'Dothraki',
    'Quenya',
    'Sindarin',
    'Interlingua',
    'Volapük',
    'Toki Pona',
    'Lojban',
    'Ido',
    'Mandarin Chinese',
    'Arabic',
    'Indonesian',
    'Tagalog',
    'Javanese',
    'Punjabi',
    'Romanian',
    'Serbian',
    'Croatian',
    'Slovak',
    'Slovenian',
    'Bulgarian',
    'Ukrainian',
    'Belarusian'
  ];

  List<String> _filteredLanguages = []; // Filtered language list

  @override
  void initState() {
    super.initState();
    _filteredLanguages = _allLanguages; // Initially all languages are shown
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
                  Icons.language,
                  color: Colors.white,
                  size: 30,
                ),
                title: Text(
                  'The language',
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
                  // Handle Language tap
                },
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (value) {
                  setState(() {
                    _filteredLanguages = _allLanguages.where((language) =>
                        language.toLowerCase().contains(value.toLowerCase())
                    ).toList();
                  });
                },
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: ListView.builder(
                  itemCount: _filteredLanguages.length,
                  itemBuilder: (context, index) {
                    final language = _filteredLanguages[index];
                    return ListTile(
                      title: Text(
                        language,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      trailing: _selectedLanguage == language
                          ? Icon(
                        Icons.check_circle,
                        color: Colors.amber,
                      )
                          : null,
                      onTap: () {
                        setState(() {
                          _selectedLanguage = language;
                        });
                        // Handle the language change (e.g., update the app's locale)
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