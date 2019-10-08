//Dette skulle være løsningen på "Creature Walk", men der er noget galt!
//
//Opgave 1: Læs programmet med en ven og find ud af hvordan koden fungerer
//Opgave 2: Boldens øjne bevæger sig og forstørres forkert. Det skal rettes
//Opgave 3: Bolden hopper ikke op og ned. Det skal fikses (hint: se ballwalk)
//Opgave 4: Skriv kode-kommentarer, der forklarer dine rettelser og upload til gitHub.
//Opgave 5: Aflever dokument med link på lectio (lectio registrerer ikke en kommentar som aflevering)

int  ballX             = 100, ballY            = 100;
float   eyeLeftRelativeX  = 5, eyeLeftRelativeY   = 5;  
float  eyeRightRelativeX = 20, eyeRightRelativeY = 5;    
int   speedX            = 1, speedY             = 1;
float ballSize          = 50;
float eyeSize           = 5;
float zoomFactor        = 1.01;


//setup kører en gang
void setup() {  
  size(500, 500);
}

//default 30  gange per sekund
void draw() {  

  float ballwalk =  sin(ballX*0.5)*10; 

  //svingning på +10 -10
  ballX         += speedX;    //flytter boldten 
  ballY         += speedY + ballwalk; //laver en svingning 10+/-
  ballSize      *=  zoomFactor; //ændre størrelsen af min bold
  eyeSize       *=  zoomFactor;

  eyeRightRelativeX *=zoomFactor;
  eyeRightRelativeY *=zoomFactor;
  eyeLeftRelativeX  *=zoomFactor;
  eyeLeftRelativeY  *=zoomFactor;

  clear();
  ellipse(ballX, ballY, ballSize, ballSize);
  ellipse(eyeLeftRelativeX + ballX, eyeLeftRelativeY + ballY, eyeSize, eyeSize);
  ellipse(eyeRightRelativeX + ballX, eyeRightRelativeY + ballY, eyeSize, eyeSize);
}
