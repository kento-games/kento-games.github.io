//var//
    var Bx = 99;
    var Bxd = 3;
    var By = 340;
    var Byd = -3.0;
    var g = 0.05;
    boolean go = false;
    var enemy = 357;
    var enemye = 290;
    var blue1 = 20;
    var blue2 = 20;
    boolean win = false;
    boolean lose = false;

void setup() {
 size(400, 400);
 frameRate(30);
}

var draw() {
    //background//
        background(58, 122, 250);
    
    //grass//
        stroke(98, 255, 0);
        fill(0, 255, 26);
        rect(0, 300, 400, 100);

    //ball//
        stroke(0, 0, 0);
        fill(0, 0, 0);
        ellipse(Bx, By, 20, 20);
        
    //rect(enemy)//
        rect(enemy, enemye, 40, 60);
            
    //blue//
        stroke(34, 0, 255);
        strokeWeight(5);
        line(20, 350, 20, 290);
        stroke(179, 36, 36);
    
    //"if"//
        if(go===true){
            Bx = Bx+Bxd;
            By = By+Byd;
            Byd = Byd+g;
        }
        
        if(enemy<blue1){
            lose = true;
        }
        
        if(By>290 && By<350 && Bx>enemy && Bx<enemy+40 && go===true){
            win = true;
        }
        
        if(lose === false){
            enemy = enemy-2;
        }
        
        if(win === true){
            enemy = enemy+2;
            enemye = enemye+3;
        }
    
        if(By>340){
            By = 340;
            Byd = Byd*(-1);
            Byd = Byd*0.5;
            Bxd = Bxd*0.5;
        }
        
        if(lose === true){
            go = false;
            Bxd = 0;
            Byd = 0;
        }
        
         if(mousePressed && !go){
            line(99, 340, mouseX, mouseY);
        }
        
}
//"mosuse..."//
    void mouseReleased() {
        if(!go && !lose){
        go = true;
        Bxd = (Bx-mouseX)/4;
        Byd = (mouseY-By)/8;
    }
    };
    
//"if"//


