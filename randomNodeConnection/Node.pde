

class Node{
  PVector pos;
  color Color;
  int connecterIndex;
  int xBias;
  int yBias;
  int r,g,b;
  int opacity;
  int opRate;
  int strokeWeight;
  Node(int x, int y){
    pos = new PVector(x,y);
    connecterIndex = (int)random(nodes.length);
    r = (int)random(255);
    g = (int)random(255);
    b = (int)random(255);
    opacity = (int)random(255);
    opRate = (int)random(1,3);
    strokeWeight = (int)random(1,2);
    if((int)random(40) == 19){
      strokeWeight = 3;
    }
    
    Color = color(r,g,b,opacity);
    xBias = (int)random(-3,3);
    yBias = (int)random(-3,3);
  }
  void update(){
    r += 1;
    r%= 255;
    g += 1;
    g%= 255;
    b += 1;
    b%= 255;
    opacity+= opRate;
    opacity%= 255;
    
    Color = color(r,g,b,opacity);
    
    if((int)random(200) == 50){
      connecterIndex = (int)random(nodes.length);
    }
    pos.x += random(-5,5) + xBias;
    pos.y += random(-5,5) + yBias;
  }
  
  void display(){
    stroke(Color);
    strokeWeight(strokeWeight);
    line(pos.x,pos.y,nodes[connecterIndex].pos.x,nodes[connecterIndex].pos.y);  
  }
  
}
