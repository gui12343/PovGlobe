// Fait par Guillaume Moffete et
// Nicolas Forget
// Description : Programme découpant un image dans
// un nombre de pixel voulu dans le but de l'envoyer
// à un Globe 3D

PImage img;
int columns, rows, posXimage, posYimage, posXdraw, posYdraw, posXlinedraw,posYlinedraw;
int choice;
float rectanglewidth, rectangleheight;
StringList colorcanvaslist;



void setup()
{
  size(605, 620);
  
  img = loadImage("cartemonde.jpg");  
  posXimage = 0;
  posYimage = 25;
  
  posXlinedraw = 0;
  posYlinedraw = 25;
  
  columns = 100;
  rows = 40;
  rectanglewidth = img.width/columns; 
  rectangleheight = img.height/rows;
  choice = 1;
  colorcanvaslist = new StringList();
}

void draw(){


menu();

if(mousePressed == true && mouseX > 315 && mouseX < 330 && mouseY > 7 && mouseY <22)
{
 choice  = 1;
 clear();
 background(200);
 
}
 
  if(mousePressed == true && mouseX > 470 && mouseX < 485 && mouseY > 7 && mouseY <22)
  {
 choice  = 2;
 clear();
 background(200);
}
 
 switch(choice)
 {
   case 1:   
   image(img, posXimage, posYimage);   
   DrawCanvas(posXimage, posYimage);
   break;
   case 2:     
    DrawLine(posXlinedraw, posYlinedraw);
    DrawCanvas(posXlinedraw, posYlinedraw); 
   break;
 }
}


void menu()
{ 
  fill(50);
 textSize(15); 
 text("Choisissez un mode : ", 0, 20);
 text("Afficher image", 200, 20);
 if(choice == 2)
 {
 fill(255); 
 rect(315, 7,15,15);
 }
 fill(50);
 text("Dessiner ", 400, 20);
 if(choice == 1)
 {
 fill(255);
 rect(470, 7,15,15);
 } 
 
}

void DrawCanvas(int posX, int posY)
{  
  for(int i = 0; i < columns; i++)
  {
    for(int j = 0; j < rows; j++)
    {       
      fill(get(((600/columns)*i) + posX,((300/rows)*(j+1)) + posY ));     
      strokeWeight(1);
      stroke(1);
      rect(((600/columns)*i) + posX, 300 + posY + ((300/rows)*(j+1)),rectanglewidth,rectangleheight);
    }
  }
  
}

void DrawLine(int posX, int posY)
{
   
  if(mousePressed == true && mouseX > posX && mouseY > posY && mouseY < (300+posY)  && pmouseX > posX && pmouseY > posY && pmouseY < (300+posY)) {    
    strokeWeight(8);    
    stroke(random(1,255),random(1,255),random(1,255));
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
