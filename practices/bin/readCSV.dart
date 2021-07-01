import 'dart:io';

void main() {
  String directory = Directory.current.path;

  File file = new File(directory+"/bin/resource/file.csv");
  var allLines = file.readAsLinesSync();
  List attributes = allLines[0].split(',');

  int TagsIndex = attributes.indexOf('"Tags"');
  int DurationIndex = attributes.indexOf('"Duration"');


  Map<String, double> map = {};
  for(int i = 1; i < allLines.length; i++ ){
    String line = allLines[i];
    var tag = line.split(',').elementAt(TagsIndex);
    var duration = double.parse(line.split(',').elementAt(DurationIndex).replaceAll('"', ''));
    var sameTag = map[tag];
    if(sameTag==null){
      map[tag] = duration;
    } else{
      map[tag] = sameTag + duration;
    }

  }

  for(var item in map.entries){
    print("${item.key} : ${item.value.toStringAsFixed(2)}");
  }
}