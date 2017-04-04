PImage img;
int columns, rows, posXimage, posYimage, posXdraw, posYdraw, posXlinedraw,posYlinedraw;
float rectanglewidth, rectangleheight;
StringList colorcanvaslist;



void setup()
{
  size(1200, 620);
  
  img = loadImage("cartemonde.jpg");  
  posXimage = 0;
  posYimage = 25;
  
  posXlinedraw = 600;
  posYlinedraw = 25;
  
  columns = 100;
  rows = 40;
  rectanglewidth = img.width/columns; 
  rectangleheight = img.height/rows;
  colorcanvaslist = new StringList();
}

void draw(){
 image(img, posXimage, posYimage);   
 DrawCanvas(posXimage, posYimage);
 DrawLine(posXlinedraw, posYlinedraw);
 DrawCanvas(posXlinedraw, posYlinedraw); 
  
}


void DrawCanvas(int posX, int posY)
{  
  for(int i = 0; i < columns; i++)
  {
    for(int j = 0; j < rows; j++)
    {       
      fill(get(((600/columns)*i) + posX,((300/rows)*(j+1)) + posY ));     
    strokeWeight(1);
      rect(((600/columns)*i) + posX, 300 + posY + ((300/rows)*(j+1)),rectanglewidth,rectangleheight);
    }
  }
  
}

void DrawLine(int posX, int posY)
{
   
  if(mousePressed == true && mouseX > posX && mouseY > posY && mouseY < (300+posY)  && pmouseX > posX && pmouseY > posY && pmouseY < (300+posY)) {
    fill(255);
    strokeWeight(8);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
