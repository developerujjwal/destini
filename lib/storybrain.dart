import 'story.dart';
class storybrain{
  int _storynumber=0;
List<story> _storyData = [
  story(
      storyTitle:
      'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
      choice1: 'I\'ll hop in. Thanks for the help!',
      choice2: 'Better ask him if he\'s a murderer first.'),
  story(
      storyTitle: 'He nods slowly, unphased by the question.',
      choice1: 'At least he\'s honest. I\'ll climb in.',
      choice2: 'Wait, I know how to change a tire.'),
  story(
      storyTitle:
      'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      choice1: 'I love Elton John! Hand him the cassette tape.',
      choice2: 'It\'s him or me! You take the knife and stab him.'),
  story(
      storyTitle:
      'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
      choice1: 'Restart',
      choice2: ''),
  story(
      storyTitle:
      'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
      choice1: 'Restart',
      choice2: ''),
  story(
      storyTitle:
      'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      choice1: 'Restart',
      choice2: '')
];
String Getstory(){
  return _storyData[_storynumber].storyTitle;
}
String getchoice1(){
  return _storyData[_storynumber].choice1;
}
  String getchoice2() {
    return _storyData[_storynumber].choice2;
  }
void nextstory(int choicenumber){
if(_storynumber==0 && choicenumber==1 ){
  _storynumber=2;
}
else if(_storynumber==0 && choicenumber==2){
  _storynumber=1;
}
else if(_storynumber==2 && choicenumber==1){
  _storynumber=5;
}
else if(_storynumber==2 && choicenumber==2){
  _storynumber=4;
}
else if(_storynumber==1 && choicenumber==2){
  _storynumber=3;
}
else if(_storynumber==1 && choicenumber==1){
  _storynumber=2;
}
else if(_storynumber==3||_storynumber==4||_storynumber==5){
  restart();
}
}
void restart(){
_storynumber=0;
}
bool buttonshouldbevisible(){
if (_storynumber==5 || _storynumber==4 || _storynumber==3){
  return false;
}
else if(_storynumber==0 || _storynumber==2 || _storynumber==1){
  return true;
}
else {
  return true;
}
}
}
