import 'dart:math';
import 'dart:io';

// لعبة حجر ورقه مقص

void runProgram(){
  RockPaperScissors rockpaperscissors = RockPaperScissors();
  rockpaperscissors.run();
}

class RockPaperScissors{
  Random random;
  List <String> choises = ["rock", "paper", "scissors"];
  String userinput;
  var computerinput;

  RockPaperScissors(){
    random = Random();
  }

  void run(){
    do{
      print("Enter You choise");
      userinput = stdin.readLineSync();
      computerinput = choises[random.nextInt(choises.length)];
      if(computerinput == userinput){
        print("Tie");
      }
      if(computerinput == "paper" && (userinput == "rock" || userinput == "scissors")){
        print("Computer Win And You Lose");
      }
     if(userinput == "paper" && (computerinput == "rock" || computerinput == "scissors")){
       print("You Win , ^_^");
     }
     if(computerinput == "rock" && userinput == "scissors"){
     print("Computer Win And You Lose");
     }
     if(userinput == "rock" && computerinput == "scissors"){
       print("You Win , ^_^");
     }
    }while(userinput != "exit");

  }
}