import 'dart:io';
import 'dart:math';

// تحدى تخمين اربعة ارقام ضد الكمبيوتر

class Game{
  Random random;
  List <int> computerNumber;
  List <int> userInput;
  int tries = 12;

  Game(){
    random = Random();
    computerNumber = List <int> ();
    userInput = List <int> ();
    _generateComputerNumper();
    // _askForUserInput();
  }

  void _generateComputerNumper(){
    int count = 0;
    // for(int i = 0; i < count; i++){
    while(count < 4 ){
      int rdm = random.nextInt(10);
      if (! computerNumber.contains(rdm)) {
        computerNumber.add(rdm);
        count++;
      }
    }
    print(computerNumber);
  }

  void _askForUserInput(){
    userInput.clear();
    print("Enter Your Number: ");
    String numberInput;
    int counter = 4;

    for(int i = 0; i < counter; i++){
      numberInput = stdin.readLineSync();
      if (int.tryParse(numberInput) == null){
        String strnumberInput = stdin.readLineSync();
        print("Please , a Valid Number ^_^ ...");
        counter++;
      }else{
        userInput.add(int.parse(numberInput));
      }
    }
    for(int i in userInput){
      print(i);
    }
  }
  void run(){
    int crrectNumber = 0;
    do{
      tries--;
      _askForUserInput();
      for(int i in computerNumber){
        for(int k in userInput){
          if(i == k){
            int index = computerNumber.indexOf(i);
            int userIndex = userInput.indexOf(k);
            if(index == userIndex){
              print("Number In ComputerNumber is $index Was Correct With In Your Guess $userIndex");
              crrectNumber++;
            }else{
              print("Worng Guess ...");
            }
          }
        }
      }
      print("Your Move are $tries Try");
      if(crrectNumber == 4){
        break;
      }
    }while(tries != 0);
    print("Willdone You Win , ^_^");
  }
}