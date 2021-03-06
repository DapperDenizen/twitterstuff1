class Help extends State {
  boolean stateDone = false;
  State nextState = null;
  String type = "FAQ";
  String democratString;
  String republicanString;
  String[] helpText = {
    "FAQ", 
    "on the LEFT in blue are the circles representing the Democratic nominee hillary Clinton, the key word you chose to search for is", 
    "on the RIGHT in red are the circles representing the Republican nominee Donald Trump, the key word you chose to search for is", 
    "Hover over the circle to see the tweet it represents, each circle's size is based on the number of retweets!"
  };
  int rectW = 600;
  int rectH = 400;
  int rectX = width/2 - (rectW/2);
  int rectY = 50;
  //int textX = rectX + 20;
  int textW = 500;
  int textH = 300;
  int textX = width/2 - (textW/2);
  int textY = 60;

  Button exitButton = new Button(rectX+rectW+18, rectY+12, 25, 25, "X");
  Help(String republicanString, String democratString) {
    this.republicanString = republicanString;
    this.democratString = democratString;
  }
  public State newState() {
    return nextState;
  }
  String getType() {
    return type;
  }
  boolean getDone() {
    return stateDone;
  }
  String[] getStrings() {
    return null;
  }
  //size(800, 600);
  void displayState() {
    fill(0, 0, 0);
    stroke(196, 196, 196);
    rect(rectX, rectY, rectW, rectH);
    fill(255, 255, 255);
    //stroke(255,0,0);
    textAlign(CENTER);
    text(helpText[0]+"\n"+helpText[1] +"\n \""+ republicanString+"\" \n"+helpText[2] +"\n \" "+  democratString+" \" \n"+helpText[3], textX, textY, textW, textH);
    exitButton.display();
    if (exitButton.pressed()) {
      stateDone = true;
    }
  }
}