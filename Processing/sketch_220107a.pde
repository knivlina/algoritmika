color c1, c2, c3, c4;
int pathCount;
int addRandom;

void setup() {
   size(800, 800);
   noFill();
   background(242, 230, 218);
   c1 = color(242, 109, 61);
   c2 = color(217, 90, 43);
   c3 = color(140, 43, 7);
   c4 = color(191, 72, 29);
   pathCount = 50;
   drawCurves();
}

void drawCurves() {
  float randomMin = 1;
  float randomMax = 10;  
  for(int i=0; i < pathCount; i++){
    PVector start = new PVector(-150, 530);
    PVector end = new PVector(950, 300);
    PVector[] vertices = new PVector[5];
    vertices[0] = new PVector(-100, 450);
    vertices[1] = new PVector(70, 510);
    vertices[2] = new PVector(400, 610);
    vertices[3] = new PVector(700, 350);
    vertices[4] = new PVector(900, 400);
    for(PVector vector : vertices) {
       vector.x = vector.x - (random(randomMin, randomMax) * i);
       vector.y = vector.y - (random(randomMin, randomMax) / i );
    }
    if(vertices[0].x > 0){
       vertices[0].x = 0;
    }
    if(vertices[4].x < 800){
       vertices[4].x = 800;
    }
    if (i % 3 == 0) {
      stroke(c1);
    } else if (i % 5 == 0) {
      stroke(c2);
    } else if (i % 7 == 0) {
      stroke(c3);
    } else {
      stroke(c4);
    }
    beginShape();
    curveVertex(start.x, start.y);
    curveVertex(vertices[0].x, vertices[0].y);
    curveVertex(vertices[1].x, vertices[1].y);
    curveVertex(vertices[2].x, vertices[2].y);
    curveVertex(vertices[3].x, vertices[3].y);
    curveVertex(vertices[4].x, vertices[4].y);
    curveVertex(end.x, end.y);
    endShape();
  }
}
  
  
  
  
