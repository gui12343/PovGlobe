// Fait par Guillaume Moffete et
// Nicolas Forget
// Description : Programme découpant un image dans
// un nombre de pixel voulu dans le but de l'envoyer
// à un Globe 3D

PImage img;
int columns, rows;
float rectanglewidth, rectangleheight;
StringList colorimagelist;
int fini;

void setup()
{
  size(1200, 620);
  
  img = loadImage("cartemonde.jpg");  
  columns = 100;
  rows = 40;
  rectanglewidth = img.width/columns; 
  rectangleheight = img.height/rows;
  colorimagelist = new StringList();  
  fini = 0;
}

void draw(){
 image(img, 0, 25);

  if(fini == 0)
  {
  for(int i = 0; i < columns; i++)
  {
    for(int j = 0; j < rows; j++)
    {
      colorimagelist.append(hex(get(((img.width/columns)*i),((img.height/rows)*(j+1) + 25))));      
      fill(get(((img.width/columns)*i),((img.height/rows)*(j+1)) + 25 ));
      rect(((img.width/columns)*i), img.height + 25 + ((img.height/rows)*(j+1)),rectanglewidth,rectangleheight);
    }
  }
  
  fini =1;
  }
  
  
  
}