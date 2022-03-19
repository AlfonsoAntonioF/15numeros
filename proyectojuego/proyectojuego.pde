PImage[] imgs = new PImage[16];
int []numbers= new int[16];
int [][]orden= new int[4][4];
String fileName;
int i;

 int aleatorio(int n) {
    int limit = 16 - 16 % n;
    

    int rnd;
    randomSeed ( millis() );
    do {
        rnd = int(random(16));
    } 
    while (rnd >= limit);
    rnd= rnd%n;
    return rnd;
}
 
void ordenar(int []array, int n) {
     int i, j, tmp;
 
    for (i = n - 1; i > 0; i--) {
        j = aleatorio(i + 1);
 
        tmp = array[j];
        array[j] = array[i];
        array[i] = tmp;
   }
}
void pintar (int [][]orden, int []numbers){
        for(i=0;i<4;i++){
        numbers[i]=orden[i][0];
        numbers[i+4]=orden[i][1];
        numbers[i+8]=orden[i][2];
        numbers[i+12]=orden[i][3];
        
        }
        for(i=0;i<16;i++)
  {
     fileName = numbers[i] + ".png";
     println(fileName);
    imgs[i]=loadImage(fileName);
    image(imgs[i],((i%4)*100+101),((i/4)*100)+1);
  }

}

void op_ganar( int [][]orden   ){
int cont=0,flat=0;
  for( i=0; i<4; i++ ){
    for(int j=0;j<4;j++){
      println(orden[j][i]);
      if(orden[j][i]==cont++)
         flat++;
    
  }
}

if(flat == 16) println("Has ganado!!!!!!!");
else println("ya casiii!!!!");
}

void setup()
{
  size(600,600);
  rect(100,0,400,400);
  line(200,0,200,400);
  line(300,0,300,400);
  line(400,0,400,400);
  line(100,100,500,100);
  line(100,200,500,200);
  line(100,300,500,300);
 
     i = 0;
    
    for (i = 0; i < 16; i++)
        numbers[i]= i;
        
    ordenar(numbers, 16);
    
    
    for ( i = 0; i < 16; i++)
       // println( numbers[i]);

  for(i=0;i<16;i++)
  {
     fileName = numbers[i] + ".png";
    imgs[i]=loadImage(fileName);
    orden[i%4][i/4]=numbers[i];
    image(imgs[i],((i%4)*100+101),((i/4)*100)+1);
  }
}

void draw()
{
 
} 



void mousePressed()
{

   int x = round(mouseX/100 -1);
   int y = round(mouseY/100);
   int aux;
   println(x,y);
while(orden[x][y] != 0){  
  
  if(x==0 && y==0){
    //************
  if(orden[x][y+1]== 0){
     aux=orden[x][y];
     orden[x][y]=0;
     orden[x][y+1]=aux;
  }else if( orden[x+1][y] == 0){
       aux=orden[x][y];
     orden[x][y]=0;
     orden[x+1][y]=aux;
  }
  //*************
  }else if(y==0 && x>0 && x<3 ){
    
    if( orden[x][y+1] == 0 ){
   aux=orden[x][y];
   orden[x][y]=0;
   orden[x][y+1]=aux;   
  }else if( orden[x+1][y] == 0 ){
    aux=orden[x][y];
    orden[x][y]=0;
    orden[x+1][y]=aux;
}else if( orden[x-1][y] == 0 ){
    aux=orden[x][y];
    orden[x][y]=0;
    orden[x-1][y]=aux;
}
  
  }else if( x==3 && y==0 ){
    
  if( orden[x][y+1] == 0 ){
    aux=orden[x][y];
    orden[x][y]=0;
    orden[x][y+1]=aux;
}else if( orden[x-1][y] == 0 ){
    aux=orden[x][y];
    orden[x][y]=0;
    orden[x-1][y]=aux;
}
 
  }else if( x==3 && y>0 && y<3  ){
    
        
    if( orden[x][y+1] == 0 ){
   aux=orden[x][y];
   orden[x][y]=0;
   orden[x][y+1]=aux;   
  }else if( orden[x-1][y] == 0 ){
    aux=orden[x][y];
    orden[x][y]=0;
    orden[x-1][y]=aux;
}else if( orden[x][y-1] == 0 ){
    aux=orden[x][y];
    orden[x][y]=0;
    orden[x][y-1]=aux;
}
    
  }else if( x==3 && y==3   ){

    if( orden[x][y-1] == 0 ){
    aux=orden[x][y];
    orden[x][y]=0;
    orden[x][y-1]=aux;
}else if( orden[x-1][y] == 0 ){
    aux=orden[x][y];
    orden[x][y]=0;
    orden[x-1][y]=aux;
}
    
  }else if( y==3 && x<3 && x>0 ){
        
    if( orden[x][y-1] == 0 ){
   aux=orden[x][y];
   orden[x][y]=0;
   orden[x][y-1]=aux;   
  }else if( orden[x-1][y] == 0 ){
    aux=orden[x][y];
    orden[x][y]=0;
    orden[x-1][y]=aux;
}else if( orden[x+1][y] == 0 ){
      aux=orden[x][y];
    orden[x][y]=0;
    orden[x+1][y]=aux;
  
}
    
  }else if( y==3 && x==0  ){
      
if( orden[x][y-1] == 0 ){
    aux=orden[x][y];
    orden[x][y]=0;
    orden[x][y-1]=aux;
}else if( orden[x+1][y] == 0 ){
    aux=orden[x][y];
    orden[x][y]=0;
    orden[x+1][y]=aux;
}
  
  
  
  }else if( x==0 && y>0 && y<3  ){
  if( orden[x][y-1] == 0 ){
    aux=orden[x][y];
    orden[x][y]=0;
    orden[x][y-1]=aux;
}else if( orden[x+1][y] == 0 ){
    aux=orden[x][y];
    orden[x][y]=0;
    orden[x+1][y]=aux;
}else if( orden[x][y+1] == 0){

    aux=orden[x][y];
    orden[x][y]=0;
    orden[x][y+1]=aux;


}
  
  
  
  
  }else if( x<3 && x>0 && y<3 && y>0  ){
  
  
  
  if( orden[x][y+1] == 0 ){
   aux=orden[x][y];
   orden[x][y]=0;
   orden[x][y+1]=aux;

     
  }else if( orden[x][y-1] == 0 ){
    aux=orden[x][y];
    orden[x][y]=0;
    orden[x][y-1]=aux;
    
}else if( orden[x-1][y] == 0 ){
     aux=orden[x][y];
     orden[x][y]=0;
     orden[x-1][y]=aux;
  
}else if( orden[x+1][y] == 0 ){
     aux=orden[x][y];
     orden[x][y]=0;
     orden[x+1][y]=aux;
  

}
}
   pintar(orden,numbers);
   op_ganar(orden );
}

  }
