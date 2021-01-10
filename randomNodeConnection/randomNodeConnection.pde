

Node[] nodes;
void setup(){
  size(800,600);
  nodes = new Node[200];
  for(int i = 0; i<nodes.length; i++){
    nodes[i] = new Node((int)random(width),(int)random(height));
  }
}

void draw(){
  background(51);
  for(Node n: nodes){
    n.display();
  }
  for(Node n: nodes){
    n.update();
  }
}
