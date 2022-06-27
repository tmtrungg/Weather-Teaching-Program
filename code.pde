String[] weathers={"sunny","rainy","snowy"};
String[] qqq={"dangerous","ok"};
int wewe = int(random(3));
int wewewe = int(random(2));
String weather = weathers[wewe];
String status = qqq[wewewe];
String month=" ";
String day= " ";

int dayy=day();
int monthh =month();
 
float colorbox1 = 0;         //color for weather box name 1
float colorbox2 = 0; //color for weather box name 2
float colorbox22 = 0;
float colorbox222 = 0;


//rainny color variables
float rn1 = 0, rn2 = 0, rn3 = 0;//3 values of rain true color that appear after correct box is clicked
float clbr1=255;
float clbr2=255;
float clbr3=255;
float rainrain1=198;
float rainrain2=198;
float rainrain3=198;


//variables to make the snowfall//
int snow = 300;
float [] x_pos = new float[snow];
float [] y_pos = new float[snow];
int [] size = new int[snow];
int [] direction = new int[snow];
int min_size = 1;
int max_size = 7;
int isnow=0;
float bgr1 = 255;
float bgr2 = 255;
float bgr3 = 255;
float grrr = 0;
float smile = 255;
float nosee1 = 0;
float nosee2 = 0;
float nosee3 = 0;
float snoww = 0;

//sunny color variables
  int i = 0; 
  float angle;
  float a=0;
  float snbr1= 255;
  float snbr2= 255;
  float snbr3= 255;
  float sns1=0;
  float snc=0;
  float sna1=255;
  float sna2=255;
  float sna3=255;
  
//variable to create rain falls
float x1 = random(0, 1280);
float x2 = random(0, 1280);
float x3 = random(0, 1280);
float x4 = random(0, 1280);
float x5 = random(0, 1280);
float x6 = random(0, 1280);
float x7 = random(0, 1280);
float x8 = random(0, 1280);
float x9 = random(0, 1280);
float x10 = random(0, 1280);
float x11 = random(0, 1280);
float x12 = random(0, 1280);
float x13 = random(0, 1280);
float x14 = random(0, 1280);
float x15 = random(0, 1280);
float x16 = random(0, 1280);
float x17 = random(0, 1280);
float x18 = random(0, 1280);
float x19 = random(0, 1280);
float x20 = random(0, 1280);
float x21 = random(0, 1280);
float x22 = random(0, 1280);
float x23 = random(0, 1280);
float x24 = random(0, 1280);
float x25 = random(0, 1280);
float x26 = random(0, 1280);
float x27 = random(0, 1280);
float x28 = random(0, 1280);
float x29 = random(0, 1280);
float x30 = random(0, 1280);
float x31 = random(0, 1280);
float x32 = random(0, 1280);
float y1 = random(-2000, 0);
float y2 = random(-2000, 0);
float y3 = random(-2000, 0);
float y4 = random(-2000, 0);
float y5 = random(-2000, 0);
float y6 = random(-2000, 0);
float y7 = random(-2000, 0);
float y8 = random(-2000, 0);
float y9 = random(-2000, 0);
float y10 = random(-2000, 0);
float y11 = random(-2000, 0);
float y12 = random(-2000, 0);
float y13 = random(-2000, 0);
float y14 = random(-2000, 0);
float y15 = random(-2000, 0);
float y16 = random(-2000, 0);
float y17= random(-2000, 0);
float y18 =random(-2000, 0);
float y19= random(-2000, 0);
float y20= random(-2000, 0);
float y21= random(-2000, 0);
float y22= random(-2000, 0);
float y23= random(-2000, 0);
float y24= random(-2000, 0);
float y25 = random(-2000, 0);
float y26 = random(-2000, 0);
float y27 = random(-2000, 0);
float y28 = random(-2000, 0);
float y29 = random(-2000, 0);
float y30 = random(-2000, 0);
float y31 = random(-2000, 0);
float y32 = random(-2000, 0);

float vrain = 10;       //control the speed of the rain
float c = 0;       


PFont f;                                  // Font of all the used text

float xx = 0;                //mouseclick value for mousepress ( mouseX )
float yy = 0;               //mouseclick value for mousepress ( mouseY )

float vs1 = 0;               //control the twinkling speed of weather status icon
float vs2 = 0;              //control the twinkling speed of weather status icon

//set up
void setup(){
  size(1280,720);
  f = createFont("Arial",30,true);
}  

//mouse press variables signed
void mousePressed(){
   xx = mouseX;
   yy = mouseY;
 }
   
   
//set the order of displaying objects   
void draw() {
    background(0); 
    if (weather == "rainy"){
        draw_rainy();}
    if (weather == "sunny"){
        draw_sunny();}   
    if (weather == "snowy"){
        draw_snowy();}
    if(status == "ok"){
        draw_ok();}
    if(status == "dangerous"){
        draw_dangerous();}
        
     draw_day();}

//weather status "dangerous"
void draw_dangerous(){
  stroke(0,0,0);
  vs1 = vs1 + 1;            //twinkling speed control 
  if (vs1 %23 == 0){
    vs2 = vs2 + 1;}         //twinkling speed control 
  if (vs2 % 2 == 0 ){
    fill(200,0,0);
    rect(1180,50,30,150);
    ellipse(1195,227,35,35);}
  if (vs2 % 2 == 1 ){      //twinkling speed control 
    fill(0,0,0);
    rect(1180,50,30,150);
    ellipse(1195,227,35,35);}
}

//weather status "safe"
void draw_ok(){
   vs1 = vs1 + 1;            //twinkling speed control 
  if (vs1 %23 == 0){
    vs2 = vs2 + 1;}         //twinkling speed control 
  if (vs2 % 2 == 0 ){
    stroke(5,255,61);
    fill(255);
    ellipse(1180,100,150,150);
    line(1127,97,1175,140);
    line(1175,140,1227,56);}
}

//create the calendar
void draw_day(){
if (dayy == 1){day = "1st";}
if (dayy == 2){day = "2nd";}
if (dayy == 3){day = "3rd";}
if (dayy == 4){day = "4th";}
if (dayy == 5){day = "5th";}
if (dayy == 6){day = "6th";}
if (dayy == 7){day = "7th";}
if (dayy == 8){day = "8th";}
if (dayy == 9){day = "9th";}
if (dayy == 10){day = "10th";}
if (dayy == 11){day = "11th";}
if (dayy == 12){day = "12th";}
if (dayy == 13){day = "13th";}
if (dayy == 14){day = "14th";}
if (dayy == 15){day = "15th";}
if (dayy == 16){day = "16th";}
if (dayy == 17){day = "17th";}
if (dayy == 18){day = "18th";}
if (dayy == 19){day = "19th";}
if (dayy == 20){day = "20th";}
if (dayy == 21){day = "21st";}
if (dayy == 22){day = "22nd";}
if (dayy == 23){day = "23rd";}
if (dayy == 24){day = "24th";}
if (dayy == 25){day = "25th";}
if (dayy == 26){day = "26th";}
if (dayy == 27){day = "27th";}
if (dayy == 28){day = "28th";}
if (dayy == 29){day = "29th";}
if (dayy == 30){day = "30th";}
if (dayy == 31){day = "31st";}
if (monthh==1){month = "January";}
if (monthh==2){month = "February";}
if (monthh==3){month = "March";}
if (monthh==4){month = "April";}
if (monthh==5){month = "May";}
if (monthh==6){month = "June";}
if (monthh==7){month = "July";}
if (monthh==8){month = "August";}
if (monthh==9){month = "September";}
if (monthh==10){month = "October";}
if (monthh==11){month = "November";}
if (monthh==12){month = "December";}
    stroke(0);    
    fill(255,163+i/10,93+(i/10));   //orange theme
    rect(0,0,180,180);
    fill(0);
    textFont(f,40);
    text(month,20,150);
    textFont(f,80);
    text(day,10,100);
    if ((xx<=180)&& (yy<=180)) {
        if (mousePressed == true ){
            i = i+20;}}}           //disappearing the theme
  
//rainy animation
void draw_rainy(){
  
  background(clbr1,clbr2,clbr3);
  noStroke ();
  fill(c, c, c);      //rain color (which was white in the beginning)
  
  stroke(0);
  strokeWeight(4);
  //cloud drawing
  ellipse(550+mouseX/12, 40, 100, 30); 
  ellipse(600+mouseX/12, 50, 100, 30);  
  ellipse(520+mouseX/12, 60, 100, 30);
  
  ellipse(850+mouseX/12, 40, 100, 30); 
  ellipse(900+mouseX/12, 50, 100, 30);  
  ellipse(820+mouseX/12, 60, 100, 30);
  
  ellipse(250+mouseX/12, 40, 100, 30); 
  ellipse(300+mouseX/12, 50, 100, 30);  
  ellipse(220+mouseX/12, 60, 100, 30);  
  
  
  ellipse(700+mouseX/12, 100, 100, 30); 
  ellipse(750+mouseX/12, 110, 100, 30);  
  ellipse(680+mouseX/12, 120, 100, 30);
  
  ellipse(10000+mouseX/12, 100, 100, 30); 
  ellipse(1050+mouseX/12, 110, 100, 30);  
  ellipse(980+mouseX/12, 120, 100, 30);
  
  ellipse(400+mouseX/12, 100, 100, 30); 
  ellipse(450+mouseX/12, 110, 100, 30);  
  ellipse(380+mouseX/12, 120, 100, 30);
  
     //ground//
 fill(rainrain1,rainrain2,rainrain3);
 noStroke();
 rect(0,500,1280,220);
 for(isnow=0; isnow<width; isnow++){
  ellipse(isnow*30, 498, 30, 10);}
  
  //increasing y position according to velocity
  y1= y1 + vrain;
  y2= y2 + vrain;
  y3= y3 + vrain;
  y4= y4 + vrain;
  y5= y5 + vrain;
  y6= y6 + vrain;
  y7= y7 + vrain;
  y8= y8 + vrain;
  y9= y9 + vrain;
  y10= y10 + vrain;
  y12= y12 + vrain;
  y13= y13 + vrain;
  y14= y14 + vrain;
  y15= y15 + vrain;
  y16= y16 + vrain;
  y17= y17 + vrain;
  y18= y18 + vrain;
  y19= y19 + vrain;
  y20= y20 + vrain;
  y21= y21 + vrain;
  y22= y22 + vrain;
  y23= y23 + vrain;
  y24= y24 + vrain;
  y25= y25 + vrain;
  y26= y26 + vrain;
  y27= y27 + vrain;
  y28= y28 + vrain;
  y29= y29 + vrain; 
  y30= y30 + vrain;
  y31= y31 + vrain;
  y32= y32 + vrain;
  
  //rains fall
  strokeWeight(4);
  stroke (rn1,rn2,rn3);
  line (x1, y1, x1, y1 + 60);
  line (x2, y2, x2, y2 + 60);
  line (x3, y3, x3, y3 + 60);
  line (x4, y4, x4, y4 + 60);
  line (x5, y5, x5, y5 + 60);
  line (x6, y6, x6, y6 + 60);
  line (x7, y7, x7, y7 + 60);
  line (x8, y8, x8, y8 + 60);
  line (x9, y9, x9, y9 + 60);
  line (x10, y10, x10, y10 + 60);
  line (x11, y11, x11, y11+ 60);
  line (x12, y12, x12, y12 + 60);
  line (x13, y13, x13, y13 + 60);
  line (x14, y14, x14, y14 + 60);
  line (x15, y15, x15, y15 + 60);
  line (x16, y16, x16, y16 + 60);
  line (x17, y17, x17, y17 + 30);
  line (x18, y18, x18, y18 + 30);
  line (x19, y19, x19, y19 + 30);
  line (x20, y20, x20, y20 + 30);
  line (x21, y21, x21, y21 + 30);
  line (x22, y22, x22, y22 + 30);
  line (x23, y23, x23, y23 + 30);
  line (x24, y24, x24, y24 + 30);
  line (x25, y25, x25, y25 + 30);
  line (x26, y26, x26, y26 + 30);
  line (x27, y27, x27, y27 + 30);
  line (x28, y28, x28, y28 + 30);
  line (x29, y29, x29, y29 + 30);
  line (x30, y30, x30, y30 + 30);
  line (x31, y31, x31, y31 + 30);
  line (x32, y32, x32, y32 + 30);


 
  //repeat the fall by resetting y
  if (y1>720) {y1 = 0;}
  if (y2>720) {y2 = 0;}
  if (y3>720) {y3 = 0;}
  if (y4>720) {y4 = 0;}
  if (y5>720) {y5 = 0;}
  if (y6>720) {y6 = 0;}
  if (y7>720) {y7 = 0;}
  if (y8>720) {y8 = 0;}
  if (y9>720) {y9 = 0;}
  if (y10>720) {y10 = 0;}
  if (y11>720) {y11 = 0;}
  if (y12>720) {y12 = 0;}
  if (y13>720) {y13 = 0;}
  if (y14>720) {y14 = 0;}
  if (y15>720) {y15 = 0;}
  if (y16>720) {y16 = 0;}
  if (y17>720) {y17 = 0;}
  if (y18>720) {y18 = 0;}
  if (y19>720) {y19 = 0;}
  if (y20>720) {y20= 0;}
  if (y21>720) {y21 = 0;}
  if (y22>720) {y22 = 0;}
  if (y23>720) {y23 = 0;}
  if (y24>720) {y24 = 0;}
  if (y25>720) {y25 = 0;}
  if (y26>720) {y26 = 0;}
  if (y27>720) {y27 = 0;}
  if (y28>720) {y28 = 0;}
  if (y29>720) {y29 = 0;}
  if (y30>720) {y30 = 0;}
  if (y31>720) {y31 = 0;}
  if (y32>720) {y32 = 0;}
  
  //set up weather name box 1
  stroke(0,0,colorbox1);
  fill(255,255,255);
  rect(140,550,370,90);
  fill(0,0,colorbox1);     //color contain variable for changing effect when interact
  textFont(f,80);
  text("Rainy",225,620);
  
  //set up weather name box 2
  stroke(colorbox2,0,0);
  fill(255);
  rect(770,550,370,90);
  fill(colorbox2,0,0);   //color contain variable for changing effect when interact
  text("Sunny",845,620);
  textFont(f,80);
  
  //create user interacting effect when clicking in the correct name box
  if ((xx>=140) && (xx<=510) && (yy>=550) && (yy<=640)) {
  if (mousePressed == true ){
    c=203;     //change the color of the cloud
    clbr1=247;     //change the rainny background
    clbr2=187;
    clbr3=250; 
    //change the color of the rain
    rn1=0;
    rn2=0;
    rn3=200;
    
    colorbox1=200;   //change the box color
    rainrain1 = 42;
    rainrain2 = 173;
    rainrain3 = 56;
    
    //spelling instruction appear 
    fill(0);    
    textFont(f,100);
    text("<< R - A - I - N - Y >>",190,300);}}
   
  //create user interacting effect when clicking in the incorrect name box
  if ((xx>=770) && (xx<=1140) && (yy>=550) && (yy<=640)) {
  if (mousePressed == true ){
    colorbox2=200;}}             //changing incorrec box to red when click in
}


//place for other weather kind later  
void draw_blank(){
  ellipse(100,100,100,100);}
  
void draw_sunny()
{
  background(snbr1,snbr2,snbr3);  
  
  vs1 = vs1 + 1;            //twinkling speed control 
  if (vs1 %23 == 0){
    vs2 = vs2 + 1;}         //twinkling speed control 
  if (vs2 % 2 == 0 ){
    fill(sns1,sns1,0);
    stroke(sns1,sns1,0);
    line(640,720/2-160,640,720/2-300);
    line(640,720/2+160,640,720/2+300);
    line(640 - 160,720/2,640 - 300,720/2);
    line(640 + 160,720/2,640 + 300,720/2);
    line(640-115,720/2-115,640-200,720/2-200);
    line(640+115,720/2-115,640+200,720/2-200);
    line(640-115,720/2+115,640-200,720/2+200);
    line(640+115,720/2+115,640+200,720/2+200);}
  

  fill(sns1,sns1,0);
  //rectMode(CENTER);
  pushMatrix();
  translate(width/2,height/2);
  ellipse(a,a,300,300);
  popMatrix();
  
  
  fill(snc,snc,snc);  
  ellipse(550+mouseX/12, 40, 100, 30); 
  ellipse(600+mouseX/12, 50, 100, 30);  
  ellipse(520+mouseX/12, 60, 100, 30);
  
  ellipse(850+mouseX/12, 40, 100, 30); 
  ellipse(900+mouseX/12, 50, 100, 30);  
  ellipse(820+mouseX/12, 60, 100, 30);
  
  ellipse(250+mouseX/12, 40, 100, 30); 
  ellipse(300+mouseX/12, 50, 100, 30);  
  ellipse(220+mouseX/12, 60, 100, 30);
  
  
  ellipse(700+mouseX/12, 100, 100, 30); 
  ellipse(750+mouseX/12, 110, 100, 30);  
  ellipse(680+mouseX/12, 120, 100, 30);
  
  ellipse(10000+mouseX/12, 100, 100, 30); 
  ellipse(1050+mouseX/12, 110, 100, 30);  
  ellipse(980+mouseX/12, 120, 100, 30);
  
  ellipse(400+mouseX/12, 100, 100, 30); 
  ellipse(450+mouseX/12, 110, 100, 30);  
  ellipse(380+mouseX/12, 120, 100, 30);
  
   strokeWeight(4);
   stroke(0);
  //set up weather name box 1
  stroke(colorbox1,colorbox1,0);
  fill(255,255,255);
  rect(140,550,370,90);
  fill(colorbox1,colorbox1,0);     //color contain variable for changing effect when interact
  textFont(f,80);
  text("Sunny",225,620);
  
  //set up weather name box 2
  stroke(colorbox2,0,0);
  fill(255);
  rect(770,550,370,90);
  fill(colorbox2,0,0);   //color contain variable for changing effect when interact
  text("Windy",845,620);
  textFont(f,80);
  
    //create user interacting effect when clicking in the correct name box
  if ((xx>=140) && (xx<=510) && (yy>=550) && (yy<=640)) {
  if (mousePressed == true ){
    //color appear for the correct box
    colorbox1=255;
    snbr1= 96;
    snbr2= 151;
    snbr3= 222;
    sna1=255;
    sna2=160;
    sna3=0;
    sns1=255;
    snc=255;
    fill(0);    
    textFont(f,100);
    text("<< S - U - N - N - Y >>",190,300);}} 
   //create user interacting effect when clicking in the incorrect name box
  if ((xx>=770) && (xx<=1140) && (yy>=550) && (yy<=640)) {
  if (mousePressed == true ){
    colorbox2=220;}}//changing incorrec box to red when click in
}

void draw_snowy(){
   frameRate(30);
  noStroke();
  smooth();
  
   for(isnow = 0; isnow < snow; isnow++) {
    size[isnow] = round(random(min_size, max_size));
    x_pos[isnow] = random(0, width);
    y_pos[isnow] = random(0, height);
    direction[isnow] = round(random(0, 1));} 
  
 background(bgr1,bgr2,bgr3);
 //clouds// 
  stroke(0);
  fill(255);
  ellipse(550+mouseX/12, 40, 100, 30); 
  ellipse(600+mouseX/12, 50, 100, 30);  
  ellipse(520+mouseX/12, 60, 100, 30);
  
  ellipse(850+mouseX/12, 40, 100, 30); 
  ellipse(900+mouseX/12, 50, 100, 30);  
  ellipse(820+mouseX/12, 60, 100, 30);
  
  ellipse(250+mouseX/12, 40, 100, 30); 
  ellipse(300+mouseX/12, 50, 100, 30);  
  ellipse(220+mouseX/12, 60, 100, 30);  
  
  
  ellipse(700+mouseX/12, 100, 100, 30); 
  ellipse(750+mouseX/12, 110, 100, 30);  
  ellipse(680+mouseX/12, 120, 100, 30);
  
  ellipse(10000+mouseX/12, 100, 100, 30); 
  ellipse(1050+mouseX/12, 110, 100, 30);  
  ellipse(980+mouseX/12, 120, 100, 30);
  
  ellipse(400+mouseX/12, 100, 100, 30); 
  ellipse(450+mouseX/12, 110, 100, 30);  
  ellipse(380+mouseX/12, 120, 100, 30);
  
  
 noStroke();
 //ground//
 fill(grrr);
 rect(0,500,1280,220);
 for(isnow=0; isnow<width; isnow++){
  ellipse(isnow*30, 498, 30, 10); 
 }
 
 //snowman//
 strokeWeight(2);
 stroke(0);
 fill(255);
 ellipse(1000,300,100,100);
 ellipse(1000,450,200,200);
 
 //snowman smile
 fill(smile);
 ellipse(980,290,10,12);
 ellipse(1020,290,10,12);
 ellipse(975,320,7,7);
 ellipse(985,325,7,7);
 ellipse(995,328,7,7);
 ellipse(1005,328,7,7);
 ellipse(1015,325,7,7);
 ellipse(1025,320,7,7);
 
 //snowman nose
 fill(nosee1,nosee2,nosee3);
 triangle(1005,300,995,310,1060,330);
 
 //snowman hands
 strokeWeight(6);
 stroke(100,15,15);
 line(930,380,870,425);
 line(1070,380,1130,425);
 
 //ground beneath the snowman
 noStroke();
 for(isnow=0; isnow<3; isnow++){
  fill(grrr);
   ellipse(960+isnow*35, 545, 40, 25); 
 }
 
 //snowfall
 fill(snoww);
 for(isnow = 0; isnow < x_pos.length; isnow++) {
    
    ellipse(x_pos[isnow], y_pos[isnow], size[isnow], size[isnow]);
    
    if(direction[isnow] == 0) {
      x_pos[isnow] += map(size[isnow], min_size, max_size, .1, .5);
    } else {
      x_pos[isnow] -= map(size[isnow], min_size, max_size, .1, .5);
    }
    
    y_pos[isnow] += size[isnow] + direction[isnow]; 
    
    if(x_pos[isnow] > width + size[isnow] || x_pos[isnow] < -size[isnow] || y_pos[isnow] > height + size[isnow]) {
      x_pos[isnow] = random(0, width);
      y_pos[isnow] = -size[isnow];
    }}

  //set up weather name box 1
  stroke(colorbox1,0,0);
  fill(255,255,255);
  rect(140,550,370,90);
  fill(colorbox1,0,0);     //color contain variable for changing effect when interact
  textFont(f,80);
  text("Rainy",225,620);
  
  //set up weather name box 2
  stroke(colorbox2,colorbox22,colorbox222);
  fill(255);
  rect(770,550,370,90);
  fill(colorbox2,colorbox22,colorbox222);   //color contain variable for changing effect when interact
  text("Snowy",845,620);
  textFont(f,80);
  
  if ((xx>=770) && (xx<=1140) && (yy>=550) && (yy<=640)) {
  if (mousePressed == true ){
    //color appear for the correct box
    colorbox2 = 178;
    colorbox22 = 249;
    colorbox222 = 252;
    bgr1 = 200;
    bgr2 = 200;
    bgr3 = 255;
    grrr = 240;
    smile = 0;
    nosee1 = 255;
    nosee2 = 90;
    nosee3 = 20;
    snoww = 255;
    fill(0);    
    textFont(f,100);
    text("<< S - N - O - W - Y >>",190,300);}}
    
  if ((xx>=140) && (xx<=510) && (yy>=550) && (yy<=640)) {
  if (mousePressed == true ){
    colorbox1 = 255;}}
}
