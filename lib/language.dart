class language{
   final int id;
  final String name;
  final String languageCode;
  language(this.id,this.name,this.languageCode);


  static List<language> languagesList(){

    return <language>[
      language(1, "English", 'en'),
      language(2, "Arabic", 'ar'),



    ];
  }



}