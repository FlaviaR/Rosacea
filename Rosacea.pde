Petals petals;

void setup() {
  size(640,640);
  petals = new Petals();
  background(0);
}

void incrementRosePetals() {
  if (keyPressed == true) {
    delay(300); 
    
    background(0); // clear screen
    
    int curPetals = petals.getK();
    petals = new Petals();
    
    int inc = 1;
    if (keyCode == UP) inc = (curPetals == 8) ? 1 : (curPetals += 1);
    else if (keyCode == DOWN) inc = (curPetals == 1) ? 8 : (curPetals -= 1);
        
    petals.setK(inc);
  }
}

void drawGrid() {
  stroke(255);
  line (320, 0, 320, 640); 
  line (640, 320, 0, 320); 
}

void drawText() {
  fill(255);
  int k = (int) petals.getK();
  int n = (k % 2 == 0) ? k * 2 : k;
  textSize(17);
  text ("k: ", 50, 30);
  text (k, 70, 30);
  text ("Number of petals: ", 50, 50);
  text (n, 200, 50);

  String theta = "\u0398";
  text("x = sin(" + k + theta + ")cos(" + theta + ")", 420, 580);
  text("y = sin(" + k + theta + ")sin(" + theta +")", 420, 610);
}

void draw() { 
  drawGrid();
  drawText();

  incrementRosePetals();

  petals.draw();
}