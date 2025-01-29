//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var fireworkX = 200;
var fireworkY = 360;
var sphereradius = 30;
//🟢Draw Procedure - Runs on Repeat
draw = function(){
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here
  noStroke ();
  fill (255, 113, 113)
  rect(fireworkX, fireworkY, 10, 10);
  fill (255, 21, 21)
  ellipse (200, 150, sphereradius, sphereradius)
  
  sphereradius += 1;
  fireworkY -= 3;


   if (fireworkY < 0){ // Animation Loop
      fireworkY = 360};
      
    if (sphereradius > 150) {
    sphereradius = 30;
    }
 }



//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
