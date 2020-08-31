import 'package:docker_api/src/options/RunOptions.dart';
import 'package:dshell/dshell.dart';
import 'package:meta/meta.dart';

class Image {
  var name;
  var tag;
  Image({@required String name, String tag}) {
    this.name = name;
    this.tag = tag;
  }

  ///Calls the run command on this image
  void run({RunOptions runOptions, List<String> arg}) {
    arg ??= <String>[];
    String options;
    var optionString = '';
    if (runOptions.attach != null){
      options += '--attach=${runOptions.attach.toString()}';
    }
    //TODO if for each option
    try {
      if (tag == null) {
        'docker run ${optionString}${name} ${arg}'.run;
      } else {
        'docker run ${optionString}${name}:${tag} ${arg}';
      }
    } on Exception catch (_) {
      rethrow;
    }
  }

  ///Creates the image and returns images ID
  String create({List<String> options, String arg}) {
    arg ??= '';
    var optionString = '';
    if(options != null){
      for (var a in options) {
        optionString += ' ${a}';
      }
    }
    try {
      var imageID = 'docker create ${optionString}${name} ${arg}'.lastLine;
      return imageID;
    } on Exception catch (_) {
      rethrow;
    }
  }


}