//min length 2
//max length 32
//whitespace num alpha

const regex = r'^[\w\s]+$';

class Name {
  final String value;

  Name._(this.value);

  static create(String name){

    if(!RegExp(regex).hasMatch(name)){
      // return error
    }

  }
}
