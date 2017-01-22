 
public class Petals {
 
  int k; // number of petals
  boolean cosGraph;
  Mapper mapper;
  
  Petals() {
    this.k = 1;
    cosGraph = false;
    
    mapper = new Mapper (0, 0, width, height, 
                         -1.5, -1.5, 1.5, 1.5);
  }


  void setK (int val) { 
    this.k = val;
  }
  
  int getK() {
    return k;
  }
  
  // Based off of: https://www.openprocessing.org/sketch/7367#
  void draw() {
    stroke(0);
    
    for(float t = -8*PI; t <= 8*PI; t += 0.02) {
      float r =  sin(k * t);
      float x = r * cos(t);
      float y = r * sin(t);
      
      Tuple<Float, Float> ret = mapper.windowToViewport (x, y);
      
      fill(random(255), random(255), random(255)); 
  
      ellipse(ret.x, ret.y, 8, 8);
      
    }
  }

}