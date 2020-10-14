
// برنامج لمعرفة هل انت قادر على التصويت ام لا

void runProgram(){
  VotingDecider votingdecider = VotingDecider(DateTime(1996 , 11 , 25));
  if(votingdecider.isAllowedToVote()){
    print("you Age is ${votingdecider.intdif}");
    print("^_^ , User Can Vote");
  }else{
    print("you Age is ${votingdecider.intdif}");
    print("You Can Not Vote");
  }
}

class VotingDecider{

  DateTime dateOfBirth;
  int intdif;

  VotingDecider(this.dateOfBirth);

  bool isAllowedToVote(){
    var today = DateTime.now();
    double dif = today.difference(dateOfBirth).inDays / 365;
    // Convert Double to Integer
    intdif = dif.toInt();
    if(intdif >= 18){
      return true;
    }
    // else
      return false;

  }

}

