int xCoor;
int yCoor;
int xSpeed;
int ySpeed;
boolean move;
boolean circle;
void setup() {
  size(400,400);
  xCoor=200;
  yCoor=200;
  xSpeed=-3;
  ySpeed=2;
  move = true;
  circle = true;
}
void draw() {
  background(0);
  fill(255,0,0);
  ellipse(xCoor, yCoor, 50, 50);
  xCoor +=xSpeed;
  yCoor +=ySpeed;
  if (move == true){
   xCoor-=xSpeed;
   yCoor-=ySpeed;
  }
  if(xCoor>=375 || xCoor<=25){
    xSpeed*=-1;
  }
  if (yCoor>=375 || yCoor<=25) {
    ySpeed*=-1;
  }
  if (circle==false){
    background(0);
  }
  rectMode(CORNER);
  fill(255, 0, 0);
  rect(25,325,50,50);
  fill(0,255,0);
  rect(175, 325, 50,50);
  fill(0, 0, 255);
  rect(325, 325, 50, 50);
}

void mousePressed(){
  if (mouseX > 25 && mouseX<125 && mouseY>325 && mouseY<375){
    move = true;
  }
  if (mouseX > 275 && mouseX<375 && mouseY>325 && mouseY<375){
    circle = false;
  }
  if (mouseX>175 && mouseX<225 && mouseY> 325 && mouseY<375){
    move = false;  
  }
  
}

void keyPressed() {
  circle=true;
}
