// basic stage data by Ravi Bechoe

float x, y;
int rotX, rotY; // 0 is none, 1 is +, 2 is -

EnemyHandler EH = new EnemyHandler();

// init
void setup () 
{
    size(640, 480, P3D); 
    frameRate(60);
}

// update
void draw () 
{
    canvas();
    stageOrientation();
    calculations();
    character();
}

// handles all canvas related logic
void canvas() 
{
    background(111);
    lights();
}

// input pressed
void keyPressed() 
{
    if (key == 'a' || key == 'A') rotY = 2;
    if (key == 'd' || key == 'D') rotY = 1;
}

// input released
void keyReleased() 
{
    if (key == 'a' || key == 'A' || key == 'd' || key == 'D') rotY = 0;
}

// calculate the rotations
void calculations()
{
    if (rotY == 1) y += 0.05f;
    if (rotY == 2) y -= 0.05f;
}

// stage orientation
void stageOrientation ()
{
    fill(50,50,50,50);
    pushMatrix();
    translate(width / 2, height / 2);
    rotateX(x);
    rotateY(y);
    EH.EnemyHandlerLogic();
    popMatrix();
}

// the character orientation
void character ()
{
    fill(0,0,150,255);
    pushMatrix();
    translate(width / 2, height, -100);
    box(100, 200, 100);
    
    //guns
    fill(50,50,150,255);
    translate(75,0,-50);
    box(50, 50, 200);
    translate(-150,0,0);
    box(50, 50, 200);
    popMatrix();
}
