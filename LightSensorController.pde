import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(1000, 1000);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
 
}

public void draw() {
  background(15, 160, 81);
  int y = arduino.analogRead(5);
  //System.out.println(y);
//orangatan body
fill(147, 73, 3);
//body
ellipse(500, 450, 340, 340);
//head hair
ellipse(500, 200, 230, 230);

//orangatan face
//head
fill(75, 70, 66);
ellipse(500, 200, 220, 220);

//eyes
noStroke();
fill(250, 250, 250);
ellipse(470, 190, 10, 10);
ellipse(530, 190, 10, 10);
noStroke();
fill(0, 0, 0);
ellipse(470, 190, 8, 8);
ellipse(530, 190, 8, 8);

//nose
//left nostril
triangle(490, 220, 500, 220, 495, 230);
//right nostril
triangle(500, 220, 510, 220, 505, 230);

//mouth
rect(480, 280, 40, 3);

//beard
fill(147, 73, 3);
triangle(440, 290, 560, 290, 500, 330);


//feet
fill(75, 70, 66);
ellipse(440, 700, 80, 80);
ellipse(540, 700, 80, 80);

//legs
fill(147, 73, 3);
rect(400, 550, 80, 150);
rect(500, 550, 80, 150);

//arms
//left arm
pushMatrix();
translate(370, 340);
rotate(PI/y * 2);
fill(75, 70, 66);
ellipse(-35, 380, 70, 70);
fill(147, 73, 3);
rect(0, 0, -70, 380);


popMatrix();
//right arm
pushMatrix();
translate(620, 340);
rotate(PI/ y * -2);
fill(75, 70, 66);
ellipse(35, 380, 70, 70);
fill(147, 73, 3);
rect(0, 0, 70, 380);
popMatrix();
}

