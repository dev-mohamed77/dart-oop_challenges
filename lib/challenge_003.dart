import 'dart:io';
import 'dart:math';

void runProgram(){
  RandomNumberChoices game = RandomNumberChoices();
  game.run();
}

class RandomNumberChoices{
  Random random;
  int userChoice;
  int computerChoice;
  int racingNumber;
  bool computerChoiceTracker = true;

  RandomNumberChoices(){
    random = Random();
  }

  void masseges(){
    print("^_^ , Welcome To Our Game ....");
    print("Enter Your Choices Hope You will Win");
  }

  int getRandomFromRange(int min , int max){
    int rdm = min + random.nextInt(max - min);
    return rdm;
  }

  int userInput(){
    return int.parse(stdin.readLineSync());
  }

  void run(){
    masseges();
    racingNumber = random.nextInt(50);
    do{
      print("Enter Your Number : ");
      userChoice = userInput();
      if (computerChoiceTracker) {
        computerChoice = random.nextInt(50);
      }
      if(userChoice > racingNumber){
        print("Too High");
      }
      if(userChoice < racingNumber){
        print("Too Low");
      }
      if(userChoice == racingNumber){
        print("^_^ , Welldone and You Have Won");
        print("The Number Is $racingNumber");
      }
      if(computerChoice > racingNumber){
        computerChoice = getRandomFromRange(0, computerChoice);
        computerChoiceTracker = false;
        print(" Computer Choice Too High and The Number is $computerChoice");
      }
      if(computerChoice < racingNumber){
        computerChoice = getRandomFromRange(computerChoice, 50);
        computerChoiceTracker = false;
        print("Computer Choice Too Low and The Number is $computerChoice");
      }
      if(computerChoice == racingNumber){
        print("^_^ , You Lose and Computer Choice Win ");
        print(" The Number is $racingNumber");
      }

    }while(userChoice != "exit");
  }
}